#import "NativeSettings.h"

@implementation NativeSettings

- (BOOL)do_open:(NSString *)pref {
	if ([[UIApplication sharedApplication] openURL:[NSURL URLWithString:pref]]) {
		return YES;
	} else {
		return NO;
	}
}

- (void)open:(CDVInvokedUrlCommand*)command
{
	CDVPluginResult* pluginResult = nil;
	NSString* key = [command.arguments objectAtIndex:0];
	NSString* prefix = @"App-Prefs:";
	BOOL result = NO;

	if(SYSTEM_VERSION_LESS_THAN(@"11.3")){
        prefix = @"app-settings:";
    }

	
    if ([key isEqualToString:@"application_details"]) {
        result = [self do_open:UIApplicationOpenSettingsURLString];
    }
	else if ([key isEqualToString:@"settings"]) {
		result = [self do_open:prefix];
	}
	else if ([key isEqualToString:@"about"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=About"]];
	}
	else if ([key isEqualToString:@"accessibility"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=ACCESSIBILITY"]];
	}
	else if ([key isEqualToString:@"account"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=ACCOUNT_SETTINGS"]];
	}
	else if ([key isEqualToString:@"airplane_mode"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=AIRPLANE_MODE"]];
	}
	else if ([key isEqualToString:@"autolock"]) {
		if (SYSTEM_VERSION_LESS_THAN(@"10.0")) {
			result = [self do_open:[prefix stringByAppendingString:@"root=General&path=AUTOLOCK"]];
		}
		else {
			result = [self do_open:[prefix stringByAppendingString:@"root=DISPLAY&path=AUTOLOCK"]];
		}
	}
	else if ([key isEqualToString:@"display"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Brightness"]];
	}
	else if ([key isEqualToString:@"bluetooth"]) {
		if (SYSTEM_VERSION_LESS_THAN(@"9.0")) {
			result = [self do_open:[prefix stringByAppendingString:@"root=General&path=Bluetooth"]];
		}
		else {
			result = [self do_open:[prefix stringByAppendingString:@"root=Bluetooth"]];
		}
	}
	else if ([key isEqualToString:@"castle"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=CASTLE"]];
	}
	else if ([key isEqualToString:@"cellular_usage"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=USAGE/CELLULAR_USAGE"]];
	}
	else if ([key isEqualToString:@"configuration_list"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=ManagedConfigurationList"]];
	}
	else if ([key isEqualToString:@"date"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=DATE_AND_TIME"]];
	}
	else if ([key isEqualToString:@"facetime"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=FACETIME"]];
	}
	else if ([key isEqualToString:@"settings"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General"]];
	}
	else if ([key isEqualToString:@"tethering"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=INTERNET_TETHERING"]];
	}
	else if ([key isEqualToString:@"music"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=MUSIC"]];
	}
	else if ([key isEqualToString:@"music_equalizer"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=MUSIC&path=EQ"]];
	}
	else if ([key isEqualToString:@"music_volume"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=MUSIC&path=VolumeLimit"]];
	}
	else if ([key isEqualToString:@"keyboard"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=Keyboard"]];
	}
	else if ([key isEqualToString:@"locale"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=INTERNATIONAL"]];
	}
	else if ([key isEqualToString:@"location"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=LOCATION_SERVICES"]];
	}
	else if ([key isEqualToString:@"locations"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Privacy&path=LOCATION"]];
	}
	else if ([key isEqualToString:@"network"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=Network"]];
	}
	else if ([key isEqualToString:@"nike_ipod"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=NIKE_PLUS_IPOD"]];
	}
	else if ([key isEqualToString:@"notes"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=NOTES"]];
	}
	else if ([key isEqualToString:@"notification_id"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=NOTIFICATIONS_ID"]];
	}
	else if ([key isEqualToString:@"passbook"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=PASSBOOK"]];
	}
	else if ([key isEqualToString:@"phone"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Phone"]];
	}
	else if ([key isEqualToString:@"photos"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Photos"]];
	}
	else if ([key isEqualToString:@"reset"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=Reset"]];
	}
	else if ([key isEqualToString:@"ringtone"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Sounds&path=Ringtone"]];
	}
	else if ([key isEqualToString:@"browser"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Safari"]];
	}
	else if ([key isEqualToString:@"search"]) {
		if (SYSTEM_VERSION_LESS_THAN(@"10.0")) {
			result = [self do_open:[prefix stringByAppendingString:@"root=General&path=Assistant"]];
		}
		else {
			result = [self do_open:[prefix stringByAppendingString:@"root=SIRI"]];
		}
	}
	else if ([key isEqualToString:@"sound"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Sounds"]];
	}
	else if ([key isEqualToString:@"software_update"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=SOFTWARE_UPDATE_LINK"]];
	}
	else if ([key isEqualToString:@"storage"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=CASTLE&path=STORAGE_AND_BACKUP"]];
	}
	else if ([key isEqualToString:@"store"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=STORE"]];
	}
	else if ([key isEqualToString:@"usage"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=USAGE"]];
	}
	else if ([key isEqualToString:@"video"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=VIDEO"]];
	}
	else if ([key isEqualToString:@"vpn"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=Network/VPN"]];
	}
	else if ([key isEqualToString:@"wallpaper"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Wallpaper"]];
	} 
	else if ([key isEqualToString:@"wifi"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=WIFI"]];
	} 
	else if ([key isEqualToString:@"touch"]) {
	    result = [self do_open:[prefix stringByAppendingString:@"root=TOUCHID_PASSCODE"]];
	}	
	else if ([key isEqualToString:@"battery"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=BATTERY_USAGE"]];
	}
	else if ([key isEqualToString:@"privacy"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=Privacy"]];
	}
	else if ([key isEqualToString:@"do_not_disturb"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=DO_NOT_DISTURB"]];
	}
	else if ([key isEqualToString:@"keyboards"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=General&path=Keyboard/KEYBOARDS"]];
	}
	else if ([key isEqualToString:@"mobile_data"]) {
		result = [self do_open:[prefix stringByAppendingString:@"root=MOBILE_DATA_SETTINGS_ID"]];
	}
	else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Invalid Action"];
	}
		
	if (result) {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Opened"];
	} else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Cannot open"];
	}
	
	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
