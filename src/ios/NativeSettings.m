//
//  NativeSettings.m
//  NativeSettings
//
//  Created by selahssea on 05.12.14.
//
//

#import "NativeSettings.h"

@implementation NativeSettings

- (void)open:(CDVInvokedUrlCommand*)command
{        
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        if (url != nil) {
            [[UIApplication sharedApplication] openURL:url options:[NSDictionary new] completionHandler:nil];
        }
}

@end
