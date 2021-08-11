var exec = require('cordova/exec');
var PLUGIN_NAME = 'Sift';

module.exports = {
    setBeaconKey: function(beaconKey) {
        return new Promise(function(resolve, reject) {
            exec(resolve, reject, PLUGIN_NAME, 'setBeaconKey', [beaconKey]);
        });
    },
    setAccountId: function(accountId) {
        return new Promise(function(resolve, reject) {
            exec(resolve, reject, PLUGIN_NAME, 'setAccountId', [accountId]);
        });
    },
    setUserId: function(userId) {
        return new Promise(function(resolve, reject) {
            exec(resolve, reject, PLUGIN_NAME, 'setUserId', [userId]);
        });
    },
    unsetUserId: function() {
        return new Promise(function(resolve, reject) {
            exec(resolve, reject, PLUGIN_NAME, 'unsetUserId', []);
        });
    },
};
