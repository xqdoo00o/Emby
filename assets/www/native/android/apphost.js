define(['appStorage', 'browser', 'events', 'require'], function (appStorage, browser, events, require) {

    'use strict';

    console.log = function () { };

    function sharePolyfill(data) {

        return new Promise(function (resolve, reject) {
            MainActivity.share(data.text, data.title, data.imageUrl, data.url);
            resolve();
        });
    }

    function getDeviceProfile() {

        return require(['./exoprofilebuilder']).then(function (responses) {
            return responses[0].buildProfile({});
        });
    }

    var deviceId;
    var deviceName;
    var appName;
    var appVersion;

    var supportedFeatures = function () {

        var features = {};

        if (AndroidAppHost.supportsSync()) {
            features.sync = true;
        }
        features.customsyncpath = true;

        if (AndroidAppHost.hasCamera()) {
            features.cameraupload = true;
        }

        if (AndroidAppHost.supportsDisplayModeSwitching()) {
            features.changerefreshrate = true;
        }

        features.sharing = true;
        features.exit = true;
        features.exitmenu = true;
        features.htmlaudioautoplay = true;
        features.htmlvideoautoplay = true;
        features.externallinks = true;
        features.externalappinfo = true;
        features.externallinkdisplay = true;
        features.targetblank = true;
        features.multiserver = true;
        features.youtube = true;
        features.backgroundvideo = true;

        features.physicalbackbutton = true;

        features.physicalvolumecontrol = true;
        features.nativevolumeosd = true;

        features.remotecontrol = true;

        features.castmenuhashchange = true;

        features.otherapppromotions = true;
        features.externalplayerintent = true;

        features.displaylanguage = true;

        features.chromecast = true;

        if (AndroidAppHost.getSDKVersion() >= 21) {
            features.subtitleappearancesettings = true;
        }

        features.connectsignup = true;
        features.restrictedplugins = true;
        features.displaymode = true;
        features.serversetup = true;

        return features;
    }();

    var appHost = {
        getWindowState: function () {
            return document.windowState || 'Normal';
        },
        setWindowState: function (state) {
            throw new Error('setWindowState is not supported and should not be called');
        },
        exit: function () {

            MainActivity.exitApp();
        },
        supports: function (command) {
            return supportedFeatures[command];
        },
        preferVisualCards: true,
        moreIcon: 'dots-vert',
        getSyncProfile: getDeviceProfile,

        init: function () {

            // Remove special characters
            deviceName = AndroidAppHost.getDeviceName();

            deviceId = appStorage.getItem('legacyDeviceId') || AndroidAppHost.getDeviceId();
            appVersion = AndroidAppHost.getAppVersion();
            appName = AndroidAppHost.getAppName();

            return Promise.resolve();
        },

        deviceName: function () {
            return deviceName;
        },

        deviceId: function () {
            return deviceId;
        },

        appName: function () {
            return appName;
        },

        appVersion: function () {
            return appVersion;
        },

        getPushTokenInfo: function () {

            var info = {};

            var fcmToken = AndroidAppHost.getFcmToken();
            if (fcmToken) {
                info.PushToken = fcmToken;
                info.PushTokenType = "firebase";
            }

            return info;
        },

        setTheme: function (themeSettings) {

            AndroidAppHost.setStatusBarForegroundColor(themeSettings.androidStatusBarForegroundColor);
            AndroidAppHost.setNavigationBarForegroundColor(themeSettings.androidNavigationBarForegroundColor);
        },

        setUserScalable: function (scalable) {

            if (browser.tv) {
                return;
            }

            var att = scalable ?
                'viewport-fit=cover, width=device-width, initial-scale=1, minimum-scale=1, user-scalable=yes' :
                'viewport-fit=cover, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no';

            document.querySelector('meta[name=viewport]').setAttribute('content', att);
        },

        deviceIconUrl: function () {
            return 'https://github.com/MediaBrowser/Emby.Resources/raw/master/images/devices/android.png';
        },

        getDefaultLayout: function () {
            return AndroidAppHost.getDefaultLayout();
        }
    };

    document.addEventListener('app-resume', function () {

        events.trigger(appHost, 'resume');
    });

    if (!navigator.share) {

        navigator.share = sharePolyfill;
    }

    //document.addEventListener('viewshow', function (e) {

    //    MainActivity.setPullToRefreshEnabled(e.detail.canRefresh === true);
    //});

    function validateServerAddressWithEndpoint(connectionManager, ajax, url, endpoint) {

        return ajax({

            url: connectionManager.getEmbyServerUrl(url, endpoint),
            timeout: 20000,
            type: 'GET',
            dataType: 'text'

        }).then(function (result) {

            if ((result || '').toLowerCase().indexOf(String.fromCharCode(106) + String.fromCharCode(101) + String.fromCharCode(108) + String.fromCharCode(108)) !== -1) {
                return Promise.reject();
            }

            return Promise.resolve();
        });
    }

    function validateServerAddress(connectionManager, ajax, url) {

        return Promise.all([
            validateServerAddressWithEndpoint(connectionManager, ajax, url, 'web/manifest.json'),
            validateServerAddressWithEndpoint(connectionManager, ajax, url, 'web/index.html'),
            validateServerAddressWithEndpoint(connectionManager, ajax, url, 'web/strings/en-US.json')
        ]);
    }

    appHost.validateServerAddress = function (connectionManager, ajax, url) {

        return validateServerAddress(connectionManager, ajax, url);
    };

    function normalizeSystemPixel(value) {

        var ratio = window.devicePixelRatio;
        if (ratio) {
            value = Math.floor(value / ratio);
        }

        return value;
    }

    var windowInsets = {
        top: 0,
        left: 0,
        right: 0,
        bottom: 0
    };

    window.onWindowInsetChanged = function (top, right, bottom, left) {

        top = normalizeSystemPixel(top);
        right = normalizeSystemPixel(right);
        bottom = normalizeSystemPixel(bottom);
        left = normalizeSystemPixel(left);

        windowInsets = {
            top: top,
            left: left,
            right: right,
            bottom: bottom
        };

        top = top + 'px';
        right = right + 'px';
        bottom = bottom + 'px';
        left = left + 'px';

        try {

            var style = document.documentElement.style;

            style.setProperty('--window-inset-bottom', bottom);
            style.setProperty('--window-inset-top', top);
            style.setProperty('--window-inset-right', right);
            style.setProperty('--window-inset-left', left);
        }
        catch (err) {

            // shouldn't happen, but handle potential older webviews that don't support this
            console.log('error in style.setProperty: ' + err);
        }
    };

    if (self.MainActivity) {
        MainActivity.requestApplyInsets();

        document.addEventListener('appready', function () {
            MainActivity.onAppReady();
        });
    }

    document.addEventListener('viewshow', function viewDidLoad() {
        document.removeEventListener('viewshow', viewDidLoad);
        MainActivity.onViewShow();
    });

    return appHost;
});