define(['events'], function (events) {
    'use strict';

    var permissionResolve;

    var cameraUpload = {

        start: function () {
            // don't disrupt current operations if already running
            AndroidSync.startCameraUpload();
        },

        setProgressUpdatesEnabled: function (enabled) {
            // tell native code to start or stop sending updates to the UI
            AndroidAppSettings.setCameraUploadProgressEnabled(enabled);
        },

        onProgress: function (numItems, numItemsComplete, totalPercentComplete) {

            events.trigger(cameraUpload, 'progress', [{

                numItems: numItems,
                numItemsComplete: numItemsComplete,
                totalPercentComplete: totalPercentComplete
            }]);
        },

        getAvailableFolders: function () {

            return requestPermission('CameraUpload.permissionResult').then(function (granted) {
                var buckets = '[]';
                if (granted) {
                    buckets = AndroidCameraRoll.getMediaBuckets();
                }
                // an array of objects with name and id properties.
                return JSON.parse(buckets);
            });
        },

        permissionResult: function (granted) {
            if (permissionResolve) {
                permissionResolve(granted);
                permissionResolve = null;
            }
        }

    };

    function requestPermission(callback) {
        return new Promise(function (resolve, reject) {
            MainActivity.authorizeStorage(callback);
            permissionResolve = resolve;
        });
    }

    // native code can call this
    window.CameraUpload = cameraUpload;

    return cameraUpload;
});
