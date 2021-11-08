define(['globalize', 'events', 'connectionManager', 'appSettings', 'layoutManager'], function (globalize, events, connectionManager, appSettings, layoutManager) {

    'use strict';

    var updatedProducts = [];
    var iapManager = {};

    function getPremiumInfoUrl() {

        return 'https://emby.media/premiere';
    }

    function updateProductInfo(id, owned, price) {

        var currentProduct = updatedProducts.filter(function (r) {
            return r.id === id;
        })[0];

        if (!currentProduct) {
            currentProduct = {
                id: id,
                owned: owned,
                price: price
            };

            updatedProducts.push(currentProduct);
        }

        currentProduct.price = price;
        currentProduct.owned = currentProduct.owned || owned;
        currentProduct.id = id;

        console.log('Product updated: ' + JSON.stringify(currentProduct));
        events.trigger(iapManager, 'productupdated', [currentProduct]);
    }

    function getProduct(feature) {

        var id;
        if (feature === 'embypremieremonthly') {
            id = NativeIapManager.getPremiereMonthlySku();
        } else if (feature === 'playback') {

            if (layoutManager.tv) {
                return null;
            }

            id = NativeIapManager.getUnlockProductSku();
        } else {
            return null;
        }

        var products = updatedProducts.filter(function (r) {
            return r.id === id;
        });

        return products.length ? products[0] : null;
    }

    function onStoreReady() {
        refreshPurchases();
    }

    function beginPurchase(id, email) {

        if (id === 'embypremieremonthly' || id === NativeIapManager.getPremiereMonthlySku()) {
            MainActivity.purchasePremiereMonthly(email);
        }
        else if (id === NativeIapManager.getUnlockProductSku()) {
            MainActivity.purchaseUnlock();
        } else {
            //alert('nothing');
        }
    }

    function onPurchaseComplete(result) {

        if (result === true) {

            refreshPurchases();
        }
        else if (result) {

            var apiClient = connectionManager.currentApiClient();

            apiClient.ajax({
                type: "POST",
                url: apiClient.getUrl("Appstore/Register"),
                data: {
                    Parameters: JSON.stringify(result)
                }
            }).then(function () {

                refreshPurchases();

            }, function (e) {

                refreshPurchases();
            });
        }
    }

    function refreshPurchases() {
        NativeIapManager.getPurchaseInfos("window.IapManager.updateProduct");
    }

    function getStoreFeatureId(feature) {

        // the mapping is handled internally in java
        return feature;
    }

    function getSubscriptionOptions() {

        var options = [];

        options.push({
            feature: 'embypremieremonthly',
            title: 'EmbyPremiereMonthlyWithPrice'
        });

        options = options.filter(function (o) {

            var storeProduct = getProduct(o.feature);
            return storeProduct != null;

        }).map(function (o) {

            var storeProduct = getProduct(o.feature);
            o.id = getStoreFeatureId(o.feature);
            o.title = globalize.translate(o.title, storeProduct.price);
            o.owned = storeProduct.owned;
            return o;
        });

        return Promise.resolve(options);
    }

    function isUnlockedByDefault(feature) {

        // playback-tv is only used by the settings screen to determine requirements of playback in tv mode
        if (feature === 'playback' || feature === 'playback-tv') {

            if (layoutManager.tv || feature === 'playback-tv') {
                return Promise.reject();
            }
        }

        if (feature === 'playback' || feature === 'livetv') {

            var settingsKey = 'androidlegacyunlock';
            if (appSettings.get(settingsKey) === '1') {
                return Promise.resolve();
            }

            if (NativeIapManager.isOldUnlockPurchased()) {
                appSettings.set(settingsKey, '1');
                return Promise.resolve();
            }
        }

        return Promise.reject();
    }

    function restorePurchase() {

        require(['dialog'], function (dialog) {

            var items = [];

            var options = {
                title: globalize.translate('HeaderAlreadyPaid'),
                text: globalize.translate('WhenDidYouPurchaseApp')
            };

            items.push({
                name: '2013 - 2014',
                id: 'legacy'
            });

            items.push({
                name: '2015 - ' + new Date().getFullYear(),
                id: 'new'
            });

            options.buttons = items;

            dialog(options).then(function (result) {

                if (result === 'legacy') {
                    restoreLegacyPurchase();
                }
                else if (result === 'new') {
                    restoreNewPurchase();
                }
            });
        });
    }

    function restoreLegacyPurchase() {

        var msg = globalize.translate('AlreadyPaidHelp1', 'apps@emby.media');

        msg += '<br/><br/>' + globalize.translate('AlreadyPaidHelp2');

        require(['confirm'], function (confirm) {

            confirm(msg, globalize.translate('HeaderAlreadyPaid')).then(launchEmail);

        });
    }

    function restoreNewPurchase() {

        require(['alert'], function (alert) {

            alert(globalize.translate('AndroidUnlockRestoreHelp'));

        });
    }

    function launchEmail() {

        var serverInfo = connectionManager.currentApiClient().serverInfo() || {};
        var serverId = serverInfo.Id || 'Unknown';

        var body = 'Order number: ';
        body += '\n\nPlease enter order number above or attach screenshot of order information.';
        body += '\n\n' + serverId + '|' + connectionManager.deviceId();
        body += '\nsps: ' + AndroidAppHost.supportsPlayStore().toString();

        MainActivity.sendEmail('apps@emby.media', 'Android Activation', body);
    }

    function getAdminFeatureName(feature) {

        if (feature === 'playback') {
            return 'androidappunlock';
        }

        return feature;
    }

    function getPeriodicMessageIntervalMs(feature) {
        return 0;
    }

    function getRestoreButtonText() {
        return globalize.translate('HeaderAlreadyPaid');
    }

    iapManager.getProductInfo = getProduct;
    iapManager.beginPurchase = beginPurchase;
    iapManager.onPurchaseComplete = onPurchaseComplete;
    iapManager.getSubscriptionOptions = getSubscriptionOptions;
    iapManager.isUnlockedByDefault = isUnlockedByDefault;
    iapManager.restorePurchase = restorePurchase;
    iapManager.getAdminFeatureName = getAdminFeatureName;
    iapManager.getPeriodicMessageIntervalMs = getPeriodicMessageIntervalMs;
    iapManager.getRestoreButtonText = getRestoreButtonText;
    iapManager.getPremiumInfoUrl = getPremiumInfoUrl;

    // not part of the iap interface, but called by java
    iapManager.onStoreReady = onStoreReady;
    iapManager.updateProduct = updateProductInfo;

    // Called from android
    window.IapManager = iapManager;
    NativeIapManager.initStore();

    return iapManager;
});