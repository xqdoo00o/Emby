define(['events'], function (events) {
    'use strict';

    var localSync = {

        sync: function () {

            AndroidSync.startSync();
        },

        setProgressUpdatesEnabled: function (enabled) {
            // tell native code to start or stop sending updates to the UI
            AndroidAppSettings.set("downloadProgressEnabled", (enabled || false).toString());
        },

        onProgress: function (numItems, numItemsComplete, totalPercentComplete) {

            events.trigger(localSync, 'progress', [{

                numItems: numItems,
                numItemsComplete: numItemsComplete,
                totalPercentComplete: totalPercentComplete
            }]);
        }
    };

    // native code can call this
    window.LocalSync = localSync;

    return localSync;
});