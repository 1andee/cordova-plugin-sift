#import "SiftBridge.h"

#import <Cordova/CDVAvailability.h>
#import "Sift/Sift.h"

@implementation SiftBridge

- (void)pluginInitialize {
}

- (void)setBeaconKey:(CDVInvokedUrlCommand *)command {
    NSString* beaconKey = [command.arguments objectAtIndex:0];

    [[Sift sharedInstance] setBeaconKey:beaconKey];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setAccountId:(CDVInvokedUrlCommand *)command {
    NSString* accountId = [command.arguments objectAtIndex:0];

    [[Sift sharedInstance] setAccountId:accountId];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setUserId:(CDVInvokedUrlCommand *)command {
    NSString* userId = [command.arguments objectAtIndex:0];

    [[Sift sharedInstance] setUserId:userId];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)unsetUserId:(CDVInvokedUrlCommand *)command {
    [[Sift sharedInstance] unsetUserId];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
