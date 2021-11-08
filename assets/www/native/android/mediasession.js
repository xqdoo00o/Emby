define(['events', 'playbackManager'], function (events, playbackManager) {

    'use strict';

    // A MediaSession polyfill that will delegate responsbility to the native app

    function MediaSession() {

    }

    function MediaMetadata(obj) {
        Object.assign(this, obj);
    }

    var lastUpdateTime = 0;
    var lastPaused;
    var enableMediaSession = false;
    var isLocalPlayer;
    var currentPlayer;

    function updateNativeMediaSession(metadata) {

        var now = Date.now();

        var paused = metadata.paused;

        // Don't go crazy reporting position changes
        if ((now - lastUpdateTime) < 500 && lastPaused === paused) {
            // Only report if this item hasn't been reported yet, or if there's an actual playback change.
            // Don't report on simple time updates
            return;
        }

        // Don't report time updates for self managing players
        var oldMetadata = this.mediaMetadata;
        if (isLocalPlayer && oldMetadata && oldMetadata.itemId === metadata.itemId && oldMetadata.paused === paused) {
            return;
        }

        var canSeek = (metadata.duration || 0) > 0;

        var artwork = metadata.artwork && metadata.artwork.length ? metadata.artwork[metadata.artwork.length - 1] : null;
        var imageUrl = artwork ? artwork.src : null;

        MainActivity.updateMediaSession(metadata.itemId, metadata.title, metadata.artist, metadata.album, metadata.duration, metadata.currentTime, imageUrl, canSeek, paused, playbackManager.getVolume(currentPlayer), playbackManager.isMuted(currentPlayer));
        lastUpdateTime = now;
        lastPaused = paused;
    }

    MediaSession.prototype.setActionHandler = function (name, callback) {
        events.on(this, name, callback);
    };

    Object.defineProperty(MediaSession.prototype, "metadata", {
        get: function metadata() {
            return this.mediaMetadata;
        },
        set: function metadata(value) {

            if (!enableMediaSession) {
                return;
            }

            if (value) {
                updateNativeMediaSession.call(this, value);
            } else {
                MainActivity.hideMediaSession();
                lastUpdateTime = 0;
            }

            this.mediaMetadata = value;
        }
    });

    navigator.mediaSession = new MediaSession();

    if (!window.MediaMetadata) {
        window.MediaMetadata = MediaMetadata;
    }

    events.on(playbackManager, 'playerchange', function (e, newPlayer) {

        enableMediaSession = newPlayer && !newPlayer.isLocalPlayer;

        currentPlayer = newPlayer;
        isLocalPlayer = !newPlayer || newPlayer.isLocalPlayer;

        MainActivity.setPlayback(isLocalPlayer, (newPlayer || {}).id);
    });

    // With the polyfill in place, now load the app's mediaSession handler
    require(['mediaSession']);
});