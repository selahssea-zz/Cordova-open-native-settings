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
	BOOL result = NO;
	
    if ([key isEqualToString:@"application_details"]) {
        result = [self do_open:UIApplicationOpenSettingsURLString];
    }
	else if ([key isEqualToString:@"settings"]) {
		result = [self do_open:@"prefs:"];
	}
	else if ([key isEqualToString:@"about"]) {
		result = [self do_open:@"prefs:root=General&path=About"];
	}
	else if ([key isEqualToString:@"accessibility"]) {
		result = [self do_open:@"prefs:root=General&path=ACCESSIBILITY"];
	}
	else if ([key isEqualToString:@"account"]) {
		result = [self do_open:@"prefs:root=ACCOUNT_SETTINGS"];
	}
	else if ([key isEqualToString:@"airplane_mode"]) {
		result = [self do_open:@"prefs:root=AIRPLANE_MODE"];
	}
	else if ([key isEqualToString:@"autolock"]) {
		result = [self do_open:@"prefs:root=General&path=AUTOLOCK"];
	}
	else if ([key isEqualToString:@"display"]) {
		result = [self do_open:@"prefs:root=Brightness"];
	}
	else if ([key isEqualToString:@"bluetooth"]) {
		result = [self do_open:@"prefs:root=General&path=Bluetooth"];
	}
	else if ([key isEqualToString:@"castle"]) {
		result = [self do_open:@"prefs:root=CASTLE"];
	}
	else if ([key isEqualToString:@"cellular_usage"]) {
		result = [self do_open:@"prefs:root=General&path=USAGE/CELLULAR_USAGE"];
	}
	else if ([key isEqualToString:@"configuration_list"]) {
		result = [self do_open:@"prefs:root=General&path=ManagedConfigurationList"];
	}
	else if ([key isEqualToString:@"date"]) {
		result = [self do_open:@"prefs:root=General&path=DATE_AND_TIME"];
	}
	else if ([key isEqualToString:@"facetime"]) {
		result = [self do_open:@"prefs:root=FACETIME"];
	}
	else if ([key isEqualToString:@"settings"]) {
		result = [self do_open:@"prefs:root=General"];
	}
	else if ([key isEqualToString:@"tethering"]) {
		result = [self do_open:@"prefs:root=INTERNET_TETHERING"];
	}
	else if ([key isEqualToString:@"music"]) {
		result = [self do_open:@"prefs:root=MUSIC"];
	}
	else if ([key isEqualToString:@"music_equalizer"]) {
		result = [self do_open:@"prefs:root=MUSIC&path=EQ"];
	}
	else if ([key isEqualToString:@"music_volume"]) {
		result = [self do_open:@"prefs:root=MUSIC&path=VolumeLimit"];
	}
	else if ([key isEqualToString:@"keyboard"]) {
		result = [self do_open:@"prefs:root=General&path=Keyboard"];
	}
	else if ([key isEqualToString:@"locale"]) {
		result = [self do_open:@"prefs:root=General&path=INTERNATIONAL"];
	}
	else if ([key isEqualToString:@"location"]) {
		result = [self do_open:@"prefs:root=LOCATION_SERVICES"];
	}
	else if ([key isEqualToString:@"network"]) {
		result = [self do_open:@"prefs:root=General&path=Network"];
	}
	else if ([key isEqualToString:@"nike_ipod"]) {
		result = [self do_open:@"prefs:root=NIKE_PLUS_IPOD"];
	}
	else if ([key isEqualToString:@"notes"]) {
		result = [self do_open:@"prefs:root=NOTES"];
	}
	else if ([key isEqualToString:@"notification_id"]) {
		result = [self do_open:@"prefs:root=NOTIFICATIONS_ID"];
	}
	else if ([key isEqualToString:@"passbook"]) {
		result = [self do_open:@"prefs:root=PASSBOOK"];
	}
	else if ([key isEqualToString:@"phone"]) {
		result = [self do_open:@"prefs:root=Phone"];
	}
	else if ([key isEqualToString:@"photos"]) {
		result = [self do_open:@"prefs:root=Photos"];
	}
	else if ([key isEqualToString:@"reset"]) {
		result = [self do_open:@"prefs:root=General&path=Reset"];
	}
	else if ([key isEqualToString:@"ringtone"]) {
		result = [self do_open:@"prefs:root=Sounds&path=Ringtone"];
	}
	else if ([key isEqualToString:@"browser"]) {
		result = [self do_open:@"prefs:root=Safari"];
	}
	else if ([key isEqualToString:@"search"]) {
		result = [self do_open:@"prefs:root=General&path=Assistant"];
	}
	else if ([key isEqualToString:@"sound"]) {
		result = [self do_open:@"prefs:root=Sounds"];
	}
	else if ([key isEqualToString:@"software_update"]) {
		result = [self do_open:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
	}
	else if ([key isEqualToString:@"storage"]) {
		result = [self do_open:@"prefs:root=CASTLE&path=STORAGE_AND_BACKUP"];
	}
	else if ([key isEqualToString:@"store"]) {
		result = [self do_open:@"prefs:root=STORE"];
	}
	else if ([key isEqualToString:@"usage"]) {
		result = [self do_open:@"prefs:root=General&path=USAGE"];
	}
	else if ([key isEqualToString:@"video"]) {
		result = [self do_open:@"prefs:root=VIDEO"];
	}
	else if ([key isEqualToString:@"vpn"]) {
		result = [self do_open:@"prefs:root=General&path=Network/VPN"];
	}
	else if ([key isEqualToString:@"wallpaper"]) {
		result = [self do_open:@"prefs:root=Wallpaper"];
	} 
	else if ([key isEqualToString:@"wifi"]) {
		result = [self do_open:@"prefs:root=WIFI"];
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
