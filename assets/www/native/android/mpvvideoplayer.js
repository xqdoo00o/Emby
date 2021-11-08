define(['appSettings', 'userSettings', 'subtitleAppearanceHelper', 'events', 'playbackManager', 'connectionManager', 'apphost', 'itemHelper', 'appRouter', 'globalize', 'require'], function (appSettings, userSettings, subtitleAppearanceHelper, events, playbackManager, connectionManager, appHost, itemHelper, appRouter, globalize, require) {

    'use strict';

    function MpvPlayer() {

        var self = this;

        self.name = 'ExoPlayer';
        self.id = 'exovideoplayer';

        self.type = 'mediaplayer';
        self.isLocalPlayer = true;

        self._brightnessValue = 100;
        self._volume = 100;

        window.VlcVideoPlayer = self;

        var currentMediaSource;
        var currentItem;
        var currentAspectRatio = 'auto';
        var currentPlayResolve;
        var currentPlayReject;
        var playerState = {};

        function onTimeUpdate() {
            events.trigger(self, 'timeupdate');
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

        function onError() {

            var reject = currentPlayReject;

            if (reject) {
                playerState.started = null;
                currentPlayReject = null;
                currentPlayResolve = null;

                reject();
                return;
            }

            if (playerState.started) {

                playerState.started = null;

                events.trigger(self, 'error', [
                    {
                        type: 'mediadecodeerror'
                    }]);
            }
        }

        function onEnded() {

            var state = playerState;

            if (state.started) {

                state.started = null;
                currentPlayReject = null;
                currentPlayResolve = null;

                var stopInfo = {
                    self: state.currentSrc
                };

                events.trigger(self, 'stopped', [stopInfo]);
            }
        }

        self.canSetAudioStreamIndex = function () {
            return true;
        };

        var supportedFeatures;
        function getSupportedFeatures() {

            var list = [];

            list.push('SetBrightness');

            list.push('SetAspectRatio');
            list.push('SetPlaybackRate');
            list.push('SetSubtitleOffset');

            if (MainActivity.isPictureInPictureSupported()) {
                list.push('PictureInPicture');
            }

            return list;
        }

        self.supports = function (feature) {

            if (!supportedFeatures) {
                supportedFeatures = getSupportedFeatures();
            }

            return supportedFeatures.indexOf(feature) !== -1;
        };

        self.sendLocalPlaybackCommand = function (name, val) {
            AndroidVlcPlayer.sendLocalPlaybackCommand(self.id, name, val);
        }

        self.setAspectRatio = function (val) {

            currentAspectRatio = val;
            self.sendLocalPlaybackCommand("setaspectratio", val);
        };

        self.getAspectRatio = function () {

            return currentAspectRatio;
        };

        self.getSupportedAspectRatios = function () {

            return [
                { name: globalize.translate('Auto'), id: 'auto' },
                { name: globalize.translate('Cover'), id: 'cover' },
                { name: globalize.translate('Fill'), id: 'fill' }
            ];
        };

        function getTextTrackUrl(subtitleStream, item, mediaSource) {

            if ((itemHelper.isLocalItem(item) || mediaSource.IsLocal) && subtitleStream.Path) {
                return subtitleStream.Path;
            }

            return playbackManager.getSubtitleUrl(subtitleStream, item.ServerId);
        }

        self.setSubtitleStreamIndex = function (index) {

            AndroidVlcPlayer.setSubtitleStreamIndex(index);
        };

        self.setAudioStreamIndex = function (index) {
            AndroidVlcPlayer.setAudioStreamIndex(index);
        };

        self.canPlayMediaType = function (mediaType) {

            mediaType = (mediaType || '').toLowerCase();

            if (mediaType === 'video') {
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

            if (playerState) {
                return playerState.currentTime;
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

            if (playerState) {
                return playerState.duration;
            }

            return null;
        };

        self.stop = function (destroyPlayer) {

            return new Promise(function (resolve, reject) {
                self.sendLocalPlaybackCommand("stop", (destroyPlayer || false).toString());

                setTimeout(function () {

                    onEnded();

                    if (destroyPlayer) {
                        onPlayerDestroy();
                    }

                    resolve();

                }, 500);
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

        self.setVolume = function (val) {
            if (val != null) {
                self.sendLocalPlaybackCommand("setvolume", val.toString());
                // this is better than nothing, but it is better to be notified by the player when volume changes to handle
                // situations where the change originates on the native side
                self.notifyVolumeChange(val, true);
            }
        };

        self.getVolume = function () {
            return self._volume;
        };

        self.setMute = function (mute) {
            self.sendLocalPlaybackCommand("setmute", mute.toString());
        };

        self.isMuted = function () {
            if (playerState) {
                return playerState.muted;
            }

            return false;
        };

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

        self.play = function (options) {

            return new Promise(function (resolve, reject) {

                currentPlayResolve = resolve;
                currentPlayReject = reject;

                var item = options.item;
                var mediaSource = options.mediaSource;

                var val = options.url;
                var tIndex = val.indexOf('#t=');
                var startPosMs = (options.playerStartPositionTicks || 0) / 10000;

                if (tIndex !== -1) {
                    val = val.split('#')[0];
                }

                currentMediaSource = mediaSource;
                currentItem = item;

                var apiClient = connectionManager.getApiClient(item.ServerId);

                playerState.mediaType = options.mediaType;

                var posterUrl = imageUrl(item, {
                    type: 'Primary'
                });

                if (options.mediaType === 'Audio') {

                    AndroidVlcPlayer.playAudioVlc(val, mediaSource.IsLocal, item.Id, JSON.stringify(item), JSON.stringify(mediaSource), startPosMs, posterUrl);
                    onAfterSendPlayCommand(val, startPosMs);

                } else {

                    // Implement later
                    var videoStreamIndex = -1;
                    var audioStreamIndex = mediaSource.DefaultAudioStreamIndex == null ? -1 : mediaSource.DefaultAudioStreamIndex;

                    var subtitleTrackIndexToSetOnPlaying = -1;
                    for (var i = 0, length = mediaSource.MediaStreams.length; i < length; i++) {

                        var track = mediaSource.MediaStreams[i];

                        if (track.Type === 'Subtitle') {

                            if (track.DeliveryMethod === 'External') {
                                track.DeliveryUrl = getTextTrackUrl(track, item, mediaSource);
                            }

                            if (track.Index === mediaSource.DefaultSubtitleStreamIndex && (track.DeliveryMethod === 'Embed' || track.DeliveryMethod === 'External' || track.DeliveryMethod === 'Hls')) {
                                subtitleTrackIndexToSetOnPlaying = track.Index;
                            }
                        }
                    }

                    var isTranscoding = options.playMethod === 'Transcode';

                    AndroidVlcPlayer.playVideo(val, mediaSource.IsLocal, item.Id, JSON.stringify(item), JSON.stringify(mediaSource), isTranscoding, startPosMs, videoStreamIndex, audioStreamIndex, subtitleTrackIndexToSetOnPlaying, posterUrl);

                    onAfterSendPlayCommand(val, startPosMs);
                }
            });
        };

        function onAfterSendPlayCommand(src, startPositionMs) {

            var state = playerState;

            currentAspectRatio = 'auto';

            state.currentSrc = src;
            state.duration = null;
            state.paused = false;
            state.muted = false;

            state.cacheStart = null;
            state.cacheEnd = null;
            state.started = null;

            state.subDelay = 0;
            state.playbackRate = 1;

            state.currentTime = startPositionMs;
        }

        self.getBufferedRanges = function () {

            var state = playerState;
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
            if (playerState) {
                return playerState.currentSrc;
            }
        };

        self.paused = function () {

            if (playerState) {
                return playerState.paused;
            }

            return false;
        };

        self.seekable = function () {

            return true;
        };

        function onPlayerDestroy() {
            appRouter.setTransparency('none');
            self._brightnessValue = 100;
            playerState = {};
            currentPlayReject = null;
            currentPlayResolve = null;
        }

        self.destroy = function () {

            AndroidVlcPlayer.destroyVlc(self.id);
            onPlayerDestroy();
        };

        self.onEvent = function (name) {

            if (name === 'start-file') {

                playerState.started = true;

                var resolve = currentPlayResolve;
                playerState.currentTime = playerState.currentTime || 0;

                if (resolve) {
                    currentPlayResolve = null;
                    currentPlayReject = null;
                    resolve();

                    if (playerState.mediaType === 'Video') {
                        appRouter.showVideoOsd();
                    }
                }
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
        };

        self.onPropertyChange = function (name, value) {

            if (name === 'pause') {

                if (value === true) {
                    playerState.paused = true;
                    onPause();
                } else {
                    playerState.paused = false;
                    onUnpause();
                }
            }
            else if (name === 'time-pos') {

                playerState.currentTime = value;
                onTimeUpdate();
            }
            else if (name === 'duration') {

                playerState.duration = value;
            }
            else if (name === 'sub-delay') {

                playerState.subDelay = value;
            }
            else if (name === 'speed') {

                playerState.playbackRate = value;
                onRateChange();
            }
        };

        self.onCacheUpdate = function (start, end) {

            var state = playerState;
            state.cacheStart = start;
            state.cacheEnd = end;
        };

        self.getSubtitleOffset = function () {

            if (playerState) {
                return playerState.subDelay;
            }
            return 0;
        };

        self.getPlaybackRate = function () {

            var rate = (playerState || {}).playbackRate || 1;
            if (rate && !isNaN(rate)) {
                return rate;
            }
            return 1;
        };
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

    MpvPlayer.prototype.getBrightness = function () {
        return this._brightnessValue;
    };

    MpvPlayer.prototype.setBrightness = function (val) {
        this._brightnessValue = val;
        this.sendLocalPlaybackCommand("setbrightness", val.toString());
        events.trigger(this, 'brightnesschange');
    };

    MpvPlayer.prototype.volumeUp = function () {
        AndroidVlcPlayer.volumeUp();
    };

    MpvPlayer.prototype.volumeDown = function () {
        AndroidVlcPlayer.volumeDown();
    };

    MpvPlayer.prototype.volume = function (val) {
        if (val != null) {
            return this.setVolume(val);
        }

        return this.getVolume();
    };

    MpvPlayer.prototype.notifyVolumeChange = function (val, changedByUser) {

        this._volume = val;
        if (changedByUser) {
            events.trigger(this, 'volumechange');
        }
    };

    MpvPlayer.prototype.setPlaybackRate = function (val) {
        this.sendLocalPlaybackCommand("setPlaybackRate", val.toString());
    };

    MpvPlayer.prototype.setSubtitleOffset = function (val) {
        this.sendLocalPlaybackCommand("setSubtitleOffset", val.toString());
    };

    MpvPlayer.prototype.incrementSubtitleOffset = function (val) {
        this.sendLocalPlaybackCommand("incrementSubtitleOffset", val.toString());
    };

    return MpvPlayer;
});