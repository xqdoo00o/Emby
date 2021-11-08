define(['appSettings'], function (appSettings) {
    'use strict';

    function buildProfile(options) {

        var profile = {};

        // Only setting MaxStaticBitrate for older servers
        profile.MaxStreamingBitrate = profile.MaxStaticBitrate = 200000000;
        profile.MusicStreamingTranscodingBitrate = 192000;
        profile.MaxStaticMusicBitrate = appSettings.maxStaticMusicBitrate();

        profile.DirectPlayProfiles = [];

        var supportsHevc = CodecCapabilities.supportsHevc();

        profile.DirectPlayProfiles.push({
            Type: 'Video',
            VideoCodec: supportsHevc ? null : '-hevc'
        });

        // Supported exoplayer progressive container formats:
        // Need to write a new extractor/use an extension to support others, even if the underlying audio codec is supported by ffmpeg.
        // https://exoplayer.dev/supported-formats.html#progressive-container-formats
        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'mp4,m4a,aac,ac3'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'webm'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'mka'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'mp3'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'opus,ogg,oga'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'wav,wave'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'mpg,mpeg,ps,m2p'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'ts,tsa'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'flac'
        });

        profile.DirectPlayProfiles.push({
            Type: 'Audio',
            Container: 'amr,3ga'
        });

        profile.TranscodingProfiles = [];

        var hlsVideoCodecs = ['h264', 'mpeg2video'];
        if (supportsHevc) {
            hlsVideoCodecs.push('hevc');
        }

        profile.TranscodingProfiles.push({
            Container: 'ts',
            Type: 'Video',
            AudioCodec: 'ac3,aac,mp3',
            VideoCodec: hlsVideoCodecs.join(','),
            Context: 'Streaming',
            Protocol: 'hls',
            MaxAudioChannels: '6',
            MinSegments: '1',
            BreakOnNonKeyFrames: true,
            SegmentLength: '3',
            ManifestSubtitles: 'vtt'
        });

        var item = options.item;

        if (!item || !AndroidVlcPlayer.streamAndSaveEnabled(item.ServerId)) {
            profile.TranscodingProfiles.push({

                Container: 'ts',
                Type: 'Audio',
                AudioCodec: 'aac',
                Context: 'Streaming',
                Protocol: 'hls',
                MinSegments: '1',
                SegmentLength: '3',
                BreakOnNonKeyFrames: true
            });
        }

        profile.TranscodingProfiles.push({
            Container: 'mp3',
            Type: 'Audio',
            AudioCodec: 'mp3',
            Context: 'Streaming',
            Protocol: 'http'
        });

        profile.TranscodingProfiles.push({
            Container: 'mkv',
            Type: 'Video',
            AudioCodec: 'aac,mp3,ac3',
            VideoCodec: 'h264',
            Context: 'Static',
            MaxAudioChannels: '2'
        });

        profile.TranscodingProfiles.push({
            Container: 'mp3',
            Type: 'Audio',
            AudioCodec: 'mp3',
            Context: 'Static',
            Protocol: 'http',
            MaxAudioChannels: '2'
        });

        profile.ContainerProfiles = [];

        profile.CodecProfiles = [];

        if (supportsHevc) {

            var hevcProfiles = ['Main', 'Main 10', 'Rext'];

            profile.CodecProfiles.push({
                Type: 'Video',
                Codec: 'hevc',
                Conditions: [
                    {
                        Condition: 'EqualsAny',
                        Property: 'VideoProfile',
                        Value: hevcProfiles.join('|'),
                        IsRequired: false
                    }]
            });
        }

        profile.CodecProfiles.push({
            Type: 'Video',
            Codec: 'h264',
            Conditions: [
                {
                    Condition: 'LessThanEqual',
                    Property: 'VideoLevel',
                    Value: CodecCapabilities.getMaxH264Level(),
                    IsRequired: false
                }]
        });

        // Subtitle profiles
        // External vtt or burn in
        profile.SubtitleProfiles = [];
        profile.SubtitleProfiles.push({
            Format: 'vtt',
            Method: 'Hls'
        });
        profile.SubtitleProfiles.push({
            Format: 'srt',
            Method: 'External'
        });
        profile.SubtitleProfiles.push({
            Format: 'ssa',
            Method: 'External'
        });
        profile.SubtitleProfiles.push({
            Format: 'ass',
            Method: 'External'
        });
        profile.SubtitleProfiles.push({
            Format: 'smi',
            Method: 'External'
        });
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

        return profile;
    }

    return {
        buildProfile: buildProfile
    };
});