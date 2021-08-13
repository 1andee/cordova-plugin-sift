# cordova-plugin-sift

Cordova plugin for [Sift mobile SDK](https://sift.com/developers/docs/curl/mobile-sdk/overview)

This version of the plugin uses version `2.1.0` of the Sift mobile SDK.
You can view Android and iOS SDK sources on Github.

- https://github.com/SiftScience/sift-android
- https://github.com/SiftScience/sift-ios

Prerequisites:
- Sift Account ID
- Sift Beacon key

## Installing

You can install the latest version of the plugin directly from git through the Cordova CLI:
```bash
cordova plugin add https://github.com/1andee/cordova-plugin-sift.git
```

### Usage

In your 'deviceready' handler, start Sift:
```javascript
window.cordova.plugins.sift.setAccountId("ACCOUNT_ID");
window.cordova.plugins.sift.setBeaconKey("BEACON_KEY");
```

To set a user id once they have logged in:
```javascript
window.cordova.plugins.sift.setUserId("USER_ID");
```

To unset a user id upon logout:
```javascript
window.cordova.plugins.sift.unsetUserId();
```