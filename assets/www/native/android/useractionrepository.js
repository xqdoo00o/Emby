define([], function () {
    'use strict';

    function getByServerId(serverId) {

        throw new Error('getByServerId not implemented');
    }

    function getUserAction(key) {

        throw new Error('getUserAction not implemented');
    }

    function addUserAction(key, val) {

        return Promise.resolve(AndroidLocalDatabase.addUserAction(JSON.stringify(val)));
    }

    function deleteUserAction(key) {

        throw new Error('deleteUserAction not implemented');
    }

    function clearUserActions() {

        throw new Error('clearUserActions not implemented');
    }

    return {
        getUserAction: getUserAction,
        addUserAction: addUserAction,
        deleteUserAction: deleteUserAction,
        clearUserActions: clearUserActions,
        getByServerId: getByServerId
    };
});