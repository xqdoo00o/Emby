define(['appSettings', 'events', 'connectionManager', 'userSettings', 'registrationServices'], function (appSettings, events, connectionManager, userSettings, registrationServices) {
    'use strict';

    function syncSetting(name, value) {

        // Make sure to handle value being null/empty
        if (value == null) {

            // clear value stored on native side
            AndroidAppSettings.remove(name);

        } else {

            // value could be a boolean or int, so convert to a plain string for native storage
            value = value.toString();
            AndroidAppSettings.set(name, value);
        }
    }

    events.on(appSettings, 'change', function (e, name, value) {

        switch (name) {
            case 'cameraUploadServers':

                syncSetting(name, value);

                if (value) {
                    MainActivity.authorizeStorage();
                }

                break;
            case 'backgroundVideo':
            case 'cameraUploadOnlyOnWifi':
            case 'cameraUploadAllFolders':
            case 'cameraUploadFolders':
            case 'enableRefreshRateSwitching':

                syncSetting(name, value);
                break;
            default:
                break;
        }
    });

    events.on(userSettings, 'change', function (e, name, value) {

        switch (name) {
            case 'localplayersubtitleappearance3':
            case 'skipForwardLength':
            case 'skipBackLength':
                syncSetting(name, value);
                break;
            default:
                break;
        }
    });

    events.on(userSettings, 'load', function () {
        syncSetting('localplayersubtitleappearance3', JSON.stringify(userSettings.getSubtitleAppearanceSettings()));
        syncSetting('skipForwardLength', userSettings.skipForwardLength());
        syncSetting('skipBackLength', userSettings.skipBackLength());

        // Clear saved sync path if it's no longer available.
        var syncPathId = appSettings.syncPath() || '';
        if (syncPathId !== '') {
            var dirs = AndroidAppHost.getWritableExternalStorageDirs();
            var size = dirs.size();
            var match = false;
            for (var i = 0; i < size; i++) {
                var dir = dirs.get(i);
                var uuid = dir.getUuid();
                if (uuid && uuid === syncPathId) {
                    match = true;
                    break;
                }
            }
            if (!match) {
                appSettings.syncPath("");
                AndroidAppSettings.clearSyncPath();
            }
        }
    });

    function syncPremiereStatus(serverId) {

        return registrationServices.validateFeature('dvr', {

            showDialog: false,
            viewOnly: true

        }).then(function () {
            syncSetting('premiere-' + serverId, 'true');
        }, function () {
            syncSetting('premiere-' + serverId, 'false');
        });
    }

    events.on(connectionManager, 'localusersignedin', function (e, serverId, userId) {
        syncPremiereStatus(serverId);
    });
});