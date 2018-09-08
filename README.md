#NativeSettings plugin for Android and iOS 8 Cordova.

The plugin allows you to open Settings view from Android Cordova application and to open Native App settings view from iOS 8 Cordova application. Based on https://github.com/raulduran/VideoPlayer.

##Adding the Plugin to your project

```bash
cordova plugin add https://github.com/mobileias/Cordova-open-native-settings.git
```

##Removing the Plugin to your project

```bash
cordova plugin rm com.phonegap.plugins.nativesettingsopener
```

##Using the plugin (opens Location Settings in Android and Application Settings in iOS)

```
cordova.plugins.settings.open(success_callback, failure_callback);
```

###Example for iOS and Android

```js
if(typeof cordova.plugins.settings.openSetting != undefined){
    cordova.plugins.settings.open(function(){
            console.log("opened settings")
        },
        function(){
            console.log("failed to open settings")
        });
}
```

##Android Settings

Select one of the options below for the param settingName
```
    "open",
    "accessibility",
    "add_account",
    "airplane_mode",
    "apn",
    "application_details",
    "application_development",
    "application",
    "bluetooth",
    "captioning",
    "cast",
    "data_roaming",
    "date",
    "device_info",
    "display",
    "dream",
    "home",
    "input_method",
    "input_method_subtype",
    "internal_storage",
    "locale",
    "location_source",
    "manage_all_applications",
    "manage_applications",
    "memory_card",
    "network_operator",
    "nfcsharing",
    "nfc_payment",
    "nfc_settings",
    "print",
    "privacy",
    "quick_launch",
    "search",
    "security",
    "settings",
    "show_regulatory_info",
    "sound",
    "sync",
    "usage_access",
    "user_dictionary",
    "voice_input",
    "wifi_ip",
    "wifi",
    "wireless"
```

##Using the plugin for Android

```
cordova.plugins.settings.openSetting(settingName, success_callback, failure_callback);
```

###Example for Android

```js
if(typeof cordova.plugins.settings.openSetting != undefined){
    cordova.plugins.settings.openSetting("nfc_settings", function(){
            console.log("opened nfc settings")
        },
        function(){
            console.log("failed to open nfc settings")
        });
}
```
