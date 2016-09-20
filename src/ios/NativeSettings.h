#import <Cordova/CDVPlugin.h>
#import <Cordova/CDVInvokedUrlCommand.h>

@interface NativeSettings : CDVPlugin

- (void)open:(CDVInvokedUrlCommand*)command;

@end
