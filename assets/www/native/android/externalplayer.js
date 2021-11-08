define(['events', 'appSettings', 'filesystem', 'require'], function (events, appSettings, fileSystem, require) {
    "use strict";

    return function () {

        var self = this;

        self.name = 'External Player';
        self.type = 'mediaplayer';
        self.id = 'externalplayer';

        // Prioritize first
        self.priority = -1;
        self.supportsProgress = false;
        self.isLocalPlayer = true;
        self.isExternalPlayer = true;

        var currentProcess;

        var currentSrc;

        self.canPlayMediaType = function (mediaType) {

            if (mediaType === 'Video') {

                return appSettings.enableSystemExternalPlayers();
            }

            return false;
        };

        self.canPlayItem = function (item, playOptions) {

            if (!playOptions.fullscreen) {
                return false;
            }

            return true;
        };

        self.currentSrc = function () {
            return currentSrc;
        };

        function modifyStreamUrl(options) {

            var url = options.url;
            var mediaSource = options.mediaSource;

            if (!mediaSource || mediaSource.Protocol !== 'File' || url === mediaSource.Path) {
                return Promise.resolve(url);
            }

            var method = mediaSource.VideoType === 'BluRay' || mediaSource.VideoType === 'Dvd' || mediaSource.VideoType === 'HdDvd' ?
                'directoryExists' :
                'fileExists';

            return fileSystem[method](mediaSource.Path).then(function () {
                return mediaSource.Path;
            }, function () {
                return url;
            });
        }

        self.play = function (options) {

            return modifyStreamUrl(options).then(function (streamUrl) {
                // David modify: get title and possible external subtitle url & resume time from options
                var streamTitle = (options.item.SeriesName ? options.item.SeriesName + " " : "") +
                (options.item.SeasonName ? options.item.SeasonName + " " : "") + options.item.Name;
                // subtitle string param format:
                // subtitle url#subtitle name#default sub("true")
                var subsString = "";
                for(var i = 0;i<options.textTracks.length;i++){
                    var sub = options.textTracks[i];
                    var subUrl = sub.url + "#" + sub.title;
                    if (sub.isDefault) {
                        subUrl += "#true"
                    }
                    subsString += subUrl;
                    if (i !== options.textTracks.length - 1){
                        subsString += ","
                    }
                }
                var resumeMs = 0;
                if (options.playerStartPositionTicks) {
                    resumeMs = Math.round(options.playerStartPositionTicks/10000);
                }

                if (MainActivity.launchIntent(streamUrl, options.mimeType, streamTitle, subsString, resumeMs)) {
                    return Promise.resolve();
                } else {
                    // TODO: Display some message why not external player could be started
                    // like: No Activity found to handle Intent { act=android.intent.action.VIEW dat=/storage/emulated/0/Android/data/com.mb.android/files/sync/,,,,,
                    return Promise.reject();
                }
            });
        };

        self.setSubtitleStreamIndex = function (index) {
        };

        self.canSetAudioStreamIndex = function () {
            return false;
        };

        self.setAudioStreamIndex = function (index) {

        };

        // Save this for when playback stops, because querying the time at that point might return 0
        self.currentTime = function (val) {
            return null;
        };

        self.duration = function (val) {
            return null;
        };

        self.stop = function (destroyPlayer, reportEnded) {

            return closePlayer().then(function () {
                onEndedInternal(reportEnded);
                return Promise.resolve();
            });
        };

        self.destroy = function () {
            closePlayer();
        };

        function closePlayer() {

            return Promise.resolve();
        }

        self.pause = function () {
        };

        self.unpause = function () {
        };

        self.paused = function () {
            return false;
        };

        self.volume = function (val) {
        };

        self.setMute = function (mute) {
        };

        self.isMuted = function () {
        };

        function onEnded() {

            currentProcess = null;
            onEndedInternal(true);
        }

        function onError() {

            currentProcess = null;
            events.trigger(self, 'error');
        }

        function onEndedInternal(triggerEnded) {

            if (triggerEnded) {
                var stopInfo = {
                    src: currentSrc
                };

                events.trigger(self, 'stopped', [stopInfo]);
            }

            currentSrc = null;
        }

        self.getDeviceProfile = function (item) {

            return require(['./exoprofilebuilder']).then(function (responses) {
                return responses[0].buildProfile({
                    item: item
                });
            });
        };

        self.getDeviceProfileBak = function (item) {
            var profile = {};

            // Only setting MaxStaticBitrate for older servers
            profile.MaxStreamingBitrate = profile.MaxStaticBitrate = 200000000;
            profile.MusicStreamingTranscodingBitrate = 192000;

            profile.DirectPlayProfiles = [];

            // leave container null for all
            profile.DirectPlayProfiles.push({
                Type: 'Video'
            });

            // leave container null for all
            profile.DirectPlayProfiles.push({
                Type: 'Audio'
            });

            profile.TranscodingProfiles = [];

            profile.TranscodingProfiles.push({
                Container: 'mkv',
                Type: 'Video',
                AudioCodec: 'aac,mp3,ac3',
                VideoCodec: 'h264',
                Context: 'Streaming'
            });

            profile.TranscodingProfiles.push({
                Container: 'mp3',
                Type: 'Audio',
                AudioCodec: 'mp3',
                Context: 'Streaming',
                Protocol: 'http'
            });

            profile.ContainerProfiles = [];
            profile.CodecProfiles = [];

            // Subtitle profiles
            // External vtt or burn in
            profile.SubtitleProfiles = [];
            profile.SubtitleProfiles.push({
                Format: 'srt',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'subrip',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'ass',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'ssa',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'dvb_teletext',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'dvb_subtitle',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'dvbsub',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'pgs',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'pgssub',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'dvdsub',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'vtt',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'sub',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'idx',
                Method: 'Embed'
            });
            profile.SubtitleProfiles.push({
                Format: 'smi',
                Method: 'Embed'
            });

            profile.ResponseProfiles = [];

            return Promise.resolve(profile);
        };
    };
});