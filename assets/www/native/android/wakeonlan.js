define([], function () {
    'use strict';

    function send(info) {

        AndroidWakeOnLan.send(info.BroadcastAddress || "255.255.255.255", info.MacAddress, info.Port);
        return Promise.resolve();
    }

    function isSupported() {
        return true;
    }

    return {
        send: send,
        isSupported: isSupported
    };

});