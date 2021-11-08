define(['appSettings', 'userSettings', 'subtitleAppearanceHelper', 'events', 'playbackManager', 'playQueueManager', 'connectionManager', 'apphost', 'itemHelper', 'appRouter', 'globalize', 'queryString', 'require'], function (appSettings, userSettings, subtitleAppearanceHelper, events, playbackManager, PlayQueueManager, connectionManager, appHost, itemHelper, appRouter, globalize, queryString, require) {

    'use strict';

    function MpvPlayer() {

        var self = this;

        self._playQueueManager = new PlayQueueManager();

        self.name = 'ExoPlayer';
        self.id = 'exoaudioplayer';

        self.type = 'mediaplayer';
        self.isLocalPlayer = true;
        self.playerState = {};
        self.playQueueState = {};

        window.VlcAudioPlayer = self;

        var currentMediaSource;
        var currentItem;
        var currentAspectRatio = 'bestfit';
        var currentPlayResolve;
        var currentPlayReject;

        var stopResolve;
        var destroyResolve;

        function onTimeUpdate() {
            events.trigger(self, 'timeupdate');
        }

        function onVolumeChange() {
            events.trigger(self, 'volumechange');
        }

        function onUnpause() {
            events.trigger(self, 'unpause');
        }

        function onPause() {
            events.trigger(self, 'pause');
        }

        function onRateChange() {
            events.trigger(self, 'playbackratechange');
        }

        function onRepeatModeChange(value) {
            self.playQueueState.repeatMode = value;
            events.trigger(self, 'repeatmodechange');
        }

        function onError() {

            var reject = currentPlayReject;

            if (reject) {
                self.playerState.started = null;
                currentPlayReject = null;
                currentPlayResolve = null;

                reject();
                return;
            }

            if (self.playerState.started) {

                self.playerState.started = null;

                events.trigger(self, 'error', [
                    {
                        type: 'mediadecodeerror'
                    }]);
            }
        }

        function onEnded() {

            var state = self.playerState;
            var resolve = stopResolve;

            var item = self.currentItem();
            if (item && !self._reportedStopped) {

                self._reportedStopped = true;

                state.started = null;
                currentPlayReject = null;
                currentPlayResolve = null;

                var hasNext;
                if (resolve) {
                    hasNext = false;
                }
                else {
                    let nextIndex = self.playQueueState.currentPlaylistIndex + 1;   
                    hasNext = self.playQueueState.repeatMode !== 'RepeatNone' || nextIndex < self.getCurrentPlaylistLength();
                }

                events.trigger(self, 'itemstopped', [{
                    item: item,
                    mediaSource: self.currentMediaSource(),
                    positionMs: self.currentTime(),
                    nextMediaType: hasNext ? "Audio" : null
                }]);
            }

            // Handle nothing to play next
            if (resolve) {
                stopResolve = null;
                resetPlayQueueState();
                resolve();
            }
        }

        function resetPlayQueueState() {
            self.playQueueState.playlist = [];
            self.playQueueState.currentPlaylistItemId = null;
            self.playQueueState.currentPlaylistIndex = -1;
            self.playQueueState.repeatMode = 'RepeatNone';
        }

        self.sendLocalPlaybackCommand = function (name, val) {
            AndroidVlcPlayer.sendLocalPlaybackCommand(self.id, name, val);
        }

        self.canSetAudioStreamIndex = function () {
            return true;
        };

        var supportedFeatures;
        function getSupportedFeatures() {

            var list = [];

            list.push('SetPlaybackRate');

            //if (MainActivity.isPictureInPictureSupported()) {
            //    list.push('PictureInPicture');
            //}

            return list;
        }

        self.supports = function (feature) {

            if (!supportedFeatures) {
                supportedFeatures = getSupportedFeatures();
            }

            return supportedFeatures.indexOf(feature) !== -1;
        };

        self.setAspectRatio = function (val) {

            currentAspectRatio = val;
            self.sendLocalPlaybackCommand("setaspectratio", val);
        };

        self.getAspectRatio = function () {

            return currentAspectRatio;
        };

        self.getSupportedAspectRatios = function () {

            return [
                { name: '4:3', id: '4_3' },
                { name: '16:9', id: '16_9' },
                { name: globalize.translate('Auto'), id: 'bestfit' },
                { name: globalize.translate('Fill'), id: 'fill' },
                { name: globalize.translate('Original'), id: 'original' }
            ];
        };

        self.setSubtitleStreamIndex = function (index) {

            AndroidVlcPlayer.setSubtitleStreamIndex(index);
        };

        self.setAudioStreamIndex = function (index) {
            AndroidVlcPlayer.setAudioStreamIndex(index);
        };

        self.canPlayMediaType = function (mediaType) {

            mediaType = (mediaType || '').toLowerCase();

            if (mediaType === 'audio') {
                return true;
            }

            return false;
        };

        self.getDeviceProfile = function (item) {

            return require(['./exoprofilebuilder']).then(function (responses) {
                return responses[0].buildProfile({
                    item: item
                });
            });
        };

        self.currentTime = function (val) {

            if (val != null) {
                return self.seek(val);
            }

            if (self.playerState) {
                return self.playerState.currentTime;
            }

            return null;
        };

        self.seek = function (val) {

            self.sendLocalPlaybackCommand("setposition", val.toString());
        };

        self.seekRelative = function (val) {

            AndroidVlcPlayer.seekRelative(val || 0);
        };

        self.duration = function (val) {

            if (self.playerState) {
                return self.playerState.duration;
            }

            return null;
        };

        self.stop = function (destroyPlayer) {

            return new Promise(function (resolve, reject) {

                stopResolve = resolve;

                if (AndroidVlcPlayer.stop(self.id, destroyPlayer || false)) {
                    onEnded();
                }
            });
        };

        self.playPause = function () {
            self.sendLocalPlaybackCommand("playpause", null);
        };

        self.pause = function () {
            self.sendLocalPlaybackCommand("pause", null);
        };

        self.unpause = function () {
            self.sendLocalPlaybackCommand("unpause", null);
        };

        var brightnessValue = 100;
        self.setBrightness = function (val) {
            brightnessValue = val;
            self.sendLocalPlaybackCommand("setbrightness", val.toString());
            events.trigger(self, 'brightnesschange');
        };

        self.getBrightness = function () {
            return brightnessValue;
        };

        self.setVolume = function (val) {
            if (val != null) {
                self.sendLocalPlaybackCommand("setvolume", val.toString());
                if (self.playerState) {
                    // this is better than nothing, but it is better to be notified by the player when volume changes to handle
                    // situations where the change originates on the native side
                    self.playerState.volume = val;
                    onVolumeChange();
                }
            }
        };

        self.getVolume = function () {
            if (self.playerState) {
                return self.playerState.volume;
            }
        };

        self.volume = function (val) {
            if (val != null) {
                return self.setVolume(val);
            }

            return self.getVolume();
        };

        self.volumeUp = function () {
            AndroidVlcPlayer.volumeUp();
        };

        self.volumeDown = function () {
            AndroidVlcPlayer.volumeDown();
        };

        self.setMute = function (mute) {
            self.sendLocalPlaybackCommand("setmute", mute.toString());
        };

        self.isMuted = function () {
            if (self.playerState) {
                return self.playerState.muted;
            }

            return false;
        };

        self.notifyVolumeChange = function (val, changedByUser) {

            self.playerState.volume = val;
            if (changedByUser) {
                onVolumeChange();
            }
        };

        self.play = function (options) {
            return playInternal(options);
        };

        function playInternal(options) {

            return new Promise(function (resolve, reject) {

                currentPlayResolve = resolve;
                currentPlayReject = reject;

                resetPlayQueueState();

                var items = options.items;
                var startIndex = options.startIndex || 0;
                if (startIndex >= items.length) {
                    startIndex = items.length - 1;
                }

                self.playQueueState.playlist = items;
                self.playQueueState.currentPlaylistIndex = startIndex;
                self.playQueueState.playlist.forEach(addUniquePlaylistId);

                var mediaSource = self.currentMediaSource();
                currentMediaSource = mediaSource;
                currentItem = self.currentItem();

                var source = getMediaUrl(currentItem);

                var firstItems = items.slice(0, startIndex + 1);
                var lastItems = items.slice(startIndex + 1);

                var startPosMs = (options.startPositionTicks || 0) / 10000;

                self.playerState.mediaType = currentItem.MediaType;

                if (currentItem.MediaType === 'Audio') {

                    var itemPageIndex = 0;
                    var mediaItems;

                    if (firstItems.length <= queueChunkSize) {
                        mediaItems = firstItems.map(convertItemToMetadata);
                        AndroidVlcPlayer.playAudioVlc(mediaSource.IsLocal || mediaSource.Protocol === 'File', stringify(mediaItems), stringify(mediaSource), startIndex, startPosMs, itemPageIndex);
                    }
                    else {
                        // Will get 'FAILED BINDER TRANSACTION' when starting service if sending too many at once.
                        for (var i = 0; i < firstItems.length; i += queueChunkSize) {
                            mediaItems = firstItems.slice(i, i + queueChunkSize).map(convertItemToMetadata);
                            AndroidVlcPlayer.playAudioVlc(mediaSource.IsLocal || mediaSource.Protocol === 'File', stringify(mediaItems), stringify(mediaSource), startIndex, startPosMs, itemPageIndex++);
                        }
                    }

                    queueInternal(lastItems, false);
                    onAfterSendPlayCommand(source, startPosMs);
                }
            });
        }

        function onAfterSendPlayCommand(src, startPositionMs) {

            var state = self.playerState;

            currentAspectRatio = 'bestfit';

            state.currentSrc = src;
            state.duration = null;
            state.paused = false;
            state.muted = false;
            state.volume = 100;
            state.cacheStart = null;
            state.cacheEnd = null;
            state.started = null;
            state.playbackRate = 1;

            state.currentTime = startPositionMs;
        }

        self.getBufferedRanges = function () {

            var state = self.playerState;
            if (state) {

                var offset;
                //var currentPlayOptions = instance._currentPlayOptions;
                //if (currentPlayOptions) {
                //    offset = currentPlayOptions.transcodingOffsetTicks;
                //}

                offset = offset || 0;

                var cacheStart = state.cacheStart;
                var cacheEnd = state.cacheEnd;

                return [{
                    start: ((cacheStart || 0) * 10000) + offset,
                    end: ((cacheEnd || 0) * 10000) + offset
                }];
            }

            return [];
        };

        self.currentSrc = function () {
            if (self.playerState) {
                return self.playerState.currentSrc;
            }
        };

        self.paused = function () {

            if (self.playerState) {
                return self.playerState.paused;
            }

            return false;
        };

        self.seekable = function () {

            return true;
        };

        function onPlayerDestroy() {
            brightnessValue = 100;
            self.playerState = {};
            currentPlayReject = null;
            currentPlayResolve = null;
        }

        self.destroy = function () {

            return new Promise(function (resolve, reject) {

                if (AndroidVlcPlayer.destroyVlc(self.id)) {
                    resolve();
                    onPlayerDestroy();
                }
                else {
                    destroyResolve = resolve;
                }
            });
        };

        function onItemStarted() {

            self._reportedStopped = false;

            var state = self.playerState;
            state.started = true;

            var resolve = currentPlayResolve;
            state.currentTime = state.currentTime || 0;

            if (resolve) { // first item has started playback
                currentPlayResolve = null;
                currentPlayReject = null;
                resolve();
            }
        }

        function onPlaylistItemIdChanged(currentPlaylistItemId) {

            self.playQueueState.currentPlaylistItemId = currentPlaylistItemId;
        }

        function onPlaylistPosChanged(pos) {

            self._reportedStopped = false;

            var state = self.playerState;

            var index = parseInt(pos);
            if (isNaN(index)) {
                index = 0;
            }
            console.log('Item started at index: ' + index);

            self.playQueueState.currentPlaylistIndex = index;

            currentMediaSource = self.currentMediaSource();
            currentItem = self.currentItem();
            events.trigger(self, 'itemstarted', [currentItem, currentMediaSource]);

            state.currentSrc = getMediaUrl(currentItem);
        }

        self.onEvent = function (name) {

            if (name === 'start-file') {
                onItemStarted();
            }
            else if (name === 'file-loaded') {
            }
            else if (name === 'end-file') {
                onEnded();
            }
            else if (name === 'ended') {
                onEnded();
            }
            else if (name === 'error') {
                onError();
            }
            else if (name === 'shutdown') {
                onShutdown();
            }
        };

        function onShutdown() {

            onEnded();

            events.trigger(self, 'shutdown');

            onPlayerDestroy();

            var resolve = destroyResolve;
            if (resolve) {
                destroyResolve = null;
                resolve();
            }
        }

        self.onPropertyChange = function (name, value) {

            if (name === 'pause') {

                if (value === true) {
                    self.playerState.paused = true;
                    onPause();
                } else {
                    self.playerState.paused = false;
                    onUnpause();
                }
            }
            else if (name === 'time-pos') {

                self.playerState.currentTime = value;
                onTimeUpdate();
            }
            else if (name === 'duration') {

                self.playerState.duration = value;
            }
            else if (name === 'playlist-pos') {

                onPlaylistPosChanged(value);
            }
            else if (name === 'playlistItemId') {

                onPlaylistItemIdChanged(value);
            }
            else if (name === 'speed') {

                self.playerState.playbackRate = value;
                onRateChange();
            }
            else if (name === 'repeat-mode') {

                onRepeatModeChange(value);
            }
        };

        self.onCacheUpdate = function (start, end) {

            var state = self.playerState;
            state.cacheStart = start;
            state.cacheEnd = end;
        };

        self.onPlaylistItemRemoved = function (removedId) {
    
            events.trigger(self, 'playlistitemremove', [
            {
                PlaylistItemIds: [removedId]
            }]);
        }

        self.onPlaylistItemMoved = function (playlistItemId, newIndex) {
            
            events.trigger(self, 'playlistitemmove', [
            {
                playlistItemId: playlistItemId,
                newIndex: newIndex
            }]);
        }

        self.onPlaylistChanged = function (jsonItems, currentIndex) {
            let items = []
            jsonItems.forEach(function (item) {
                items.push(JSON.parse(item));
            });
            self.playQueueState.playlist = items;
            self.playQueueState.currentPlaylistIndex = currentIndex;
        }

        self.getPlaybackRate = function () {

            var rate = (self.playerState || {}).playbackRate || 1;
            if (rate && !isNaN(rate)) {
                return rate;
            }
            return 1;
        };
    }

    function getMediaUrl(item) {

        var mediaSource = item.MediaSources[0];

        var url = mediaSource.StreamUrl || mediaSource.Path;

        return url;
    }

    function imageUrl(item, options) {

        options = options || {};
        options.type = options.type || "Primary";

        if (item.ImageTags && item.ImageTags[options.type]) {

            options.tag = item.ImageTags[options.type];
            return connectionManager.getApiClient(item.ServerId).getScaledImageUrl(item.Id, options);
        }

        if (item.AlbumId && item.AlbumPrimaryImageTag) {

            options.tag = item.AlbumPrimaryImageTag;
            return connectionManager.getApiClient(item.ServerId).getScaledImageUrl(item.AlbumId, options);
        }

        return null;
    }

    function stringify(obj) {
        return JSON.stringify(obj, getCircularReplacer());
    }

    const getCircularReplacer = () => {
        const seen = new WeakSet();
        return (key, value) => {
          if (typeof value === "object" && value !== null) {
            if (seen.has(value)) {
              return;
            }
            seen.add(value);
          }
          return value;
        };
      };

    function convertItemToMetadata(item) {

        var mediaItem = {};

        var val = getMediaUrl(item);

        var tIndex = val.indexOf('#t=');
        if (tIndex !== -1) {
            val = val.split('#')[0];
        }

        var posterUrl = imageUrl(item, {
            type: 'Primary'
        });

        mediaItem.source = val;
        mediaItem.image = posterUrl;

        mediaItem.item = {};
        Object.assign(mediaItem.item, item);
        if (mediaItem.item.playOptions && mediaItem.item.playOptions.items) {
            mediaItem.item.playOptions.items = [];
        }

        console.log('Sending ' + val + ' to mpv player');

        return mediaItem;
    }

    MpvPlayer.prototype.setPictureInPictureEnabled = function (isEnabled) {

        MainActivity.setPictureInPictureEnabled(isEnabled);
    };

    MpvPlayer.prototype.isPictureInPictureEnabled = function () {

        return MainActivity.isPictureInPictureEnabled();
    };

    MpvPlayer.prototype.togglePictureInPicture = function () {
        return this.setPictureInPictureEnabled(!this.isPictureInPictureEnabled());
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.getPlaylist = function (options) {
        let queue = this.playQueueState.playlist;

        options = options || {};
        let start = options.StartIndex || 0;
        let limit = Math.min(options.Limit || queue.length, queue.length);

        return Promise.resolve({
            Items: queue.slice(start, limit + start),
            TotalRecordCount: queue.length
        });
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.setRepeatMode = function (value) {

        this.sendLocalPlaybackCommand("setRepeatMode", value);
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.getRepeatMode = function () {

        return this.playQueueState.repeatMode;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.queue = function (items) {
        this.playQueueState.playlist.push(...items);
        this.playQueueState.playlist.forEach(addUniquePlaylistId);

        return queueInternal(items, /* next: */ false);
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.queueNext = function (items) {
        this.playQueueState.playlist.unshift(...items);
        this.playQueueState.playlist.forEach(addUniquePlaylistId);

        return queueInternal(items, /* next: */ true);
    };
    
    let uniquePlaylistNumber = 0;
    function addUniquePlaylistId(item) {
            
        if (!item.PlaylistItemId) {

            item.PlaylistItemId = "playlistItem" + uniquePlaylistNumber;
            uniquePlaylistNumber++;
        }
    }

    // Arbitrary limit to prevent FAILED BINDER TRANSACTION on StartService()
    const queueChunkSize = 100;

    function queueInternal(items, next) {
        var mediaItems = items.map(convertItemToMetadata);

        // don't send too many at once
        var i;
        for (i = 0; i < mediaItems.length; i += queueChunkSize) {
            AndroidVlcPlayer.queueItems(stringify(mediaItems.slice(i, i + queueChunkSize)), next);
        }

        return Promise.resolve();
    }

    // Required for players that manage their own playlist
    MpvPlayer.prototype.previousTrack = function () {
        this._reportedStopped = true;
        this.sendLocalPlaybackCommand("prevTrack", null);
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.nextTrack = function () {
        this._reportedStopped = true;
        this.sendLocalPlaybackCommand("nextTrack", null);
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.getCurrentPlaylistIndex = function () {
        return this.playQueueState.currentPlaylistIndex;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.getCurrentPlaylistLength = function () {
        return this.playQueueState.playlist.length;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.getCurrentPlaylistItemId = function () {
        return this.playQueueState.currentPlaylistItemId;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.setCurrentPlaylistItem = function (playlistItemId) {

        var newItem;
        var newItemIndex;
        var playlist = this.playQueueState.playlist;

        for (var i = 0, length = playlist.length; i < length; i++) {
            if (playlist[i].PlaylistItemId === playlistItemId) {
                newItem = playlist[i];
                newItemIndex = i;
                break;
            }
        }

        if (newItem) {
            this.playAtIndex(newItemIndex);
        }
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.playAtIndex = function (index) {

        this._reportedStopped = true;
        this.sendLocalPlaybackCommand("playAtIndex", index);

        return Promise.resolve();
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.removeFromPlaylist = function (playlistItemIds) {

        var self = this;

        playlistItemIds.forEach(function (itemId) {

            var index = self.playQueueState.playlist.findIndex(function (item) {
                return item.PlaylistItemId === itemId;
            });

            if (index > -1) {
                AndroidVlcPlayer.removePlaylistItem(index);
            }
        });

        return Promise.resolve();
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.movePlaylistItem = function (playlistItemId, newIndex) {

        let playlist = this.playQueueState.playlist

        let oldIndex = -1;
        for (let i = 0, length = playlist.length; i < length; i++) {
            if (playlist[i].PlaylistItemId === playlistItemId) {
                oldIndex = i;
                break;
            }
        }

        if (oldIndex === -1 || oldIndex === newIndex) {
            return;
        }

        AndroidVlcPlayer.movePlaylistItem(oldIndex, newIndex);
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.currentItem = function () {
        return this.playQueueState.playlist[this.playQueueState.currentPlaylistIndex];
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.currentMediaSource = function () {

        var item = this.currentItem();

        if (item) {
            return item.MediaSources[0];
        }

        return null;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.isPlaying = function (mediaType) {

        // If mediaType == null then that means are we playing anything at all

        if (!mediaType || mediaType === 'Audio') {
            var started = this.playerState.started;
            if (started) {
                return started;
            }
        }

        return false;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.getAudioStreamIndex = function () {
        return null;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.getSubtitleStreamIndex = function () {
        return null;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.playMethod = function () {

        // null for unknown for these preset audio urls
        return null;
    };

    // Required for players that manage their own playlist
    MpvPlayer.prototype.playSessionId = function () {

        var mediaSource = this.currentMediaSource();

        if (mediaSource && mediaSource.StreamUrl) {
            var url = mediaSource.StreamUrl;
            var index = url.indexOf('?');
            var params = index === -1 ? {} : queryString.parse(url.substring(index + 1));
            return params.PlaySessionId;
        }

        return null;
    };

    MpvPlayer.prototype.setPlaybackRate = function (value) {
        this.sendLocalPlaybackCommand("setPlaybackRate", value.toString());
    };

    return MpvPlayer;
});