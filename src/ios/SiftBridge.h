#import <Cordova/CDVPlugin.h>

@interface SiftBridge : CDVPlugin {
}

- (void)setBeaconKey:(CDVInvokedUrlCommand*)command;
- (void)setAccountId:(CDVInvokedUrlCommand*)command;
- (void)setUserId:(CDVInvokedUrlCommand*)command;
- (void)unsetUserId:(CDVInvokedUrlCommand*)command;

@end
