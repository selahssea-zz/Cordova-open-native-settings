/*
 * PhoneGap is available under *either* the terms of the modified BSD license *or* the
 * MIT License (2008). See http://opensource.org/licenses/alphabetical for full text.
 *
 * Copyright (c) 2005-2010, Nitobi Software Inc.
 * Copyright (c) 2011, IBM Corporation
 */

package com.phonegap.plugins.nativesettings;

import org.json.JSONArray;
import org.json.JSONException;

import android.content.Intent;
import android.content.Context;
import android.net.Uri;

import android.provider.Settings;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;

public class NativeSettings extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        PluginResult.Status status = PluginResult.Status.OK;
        Uri packageUri = Uri.parse("package:" + this.cordova.getActivity().getPackageName());
        String result = "";

        //Information on settings can be found here:
        //http://developer.android.com/reference/android/provider/Settings.html
		
		action = args.getString(0);

        if (action.equals("accessibility")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_ACCESSIBILITY_SETTINGS));
        } else if (action.equals("account")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_ADD_ACCOUNT));
        } else if (action.equals("airplane_mode")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_AIRPLANE_MODE_SETTINGS));
        } else if (action.equals("apn")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_APN_SETTINGS));
        } else if (action.equals("application_details")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS, packageUri));
        } else if (action.equals("application_development")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS));
        } else if (action.equals("application")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_APPLICATION_SETTINGS));
        }
        //else if (action.equals("battery_saver")) {
        //    this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_BATTERY_SAVER_SETTINGS));
        //}
        else if (action.equals("bluetooth")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_BLUETOOTH_SETTINGS));
        } else if (action.equals("captioning")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_CAPTIONING_SETTINGS));
        } else if (action.equals("cast")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_CAST_SETTINGS));
        } else if (action.equals("data_roaming")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_DATA_ROAMING_SETTINGS));
        } else if (action.equals("date")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_DATE_SETTINGS));
        } else if (action.equals("about")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_DEVICE_INFO_SETTINGS));
        } else if (action.equals("display")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_DISPLAY_SETTINGS));
        } else if (action.equals("dream")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_DREAM_SETTINGS));
        } else if (action.equals("home")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_HOME_SETTINGS));
        } else if (action.equals("keyboard")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_INPUT_METHOD_SETTINGS));
        } else if (action.equals("keyboard_subtype")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_INPUT_METHOD_SUBTYPE_SETTINGS));
        } else if (action.equals("storage")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_INTERNAL_STORAGE_SETTINGS));
        } else if (action.equals("locale")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_LOCALE_SETTINGS));
        } else if (action.equals("location")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_LOCATION_SOURCE_SETTINGS));
        } else if (action.equals("manage_all_applications")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS));
        } else if (action.equals("manage_applications")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_MANAGE_APPLICATIONS_SETTINGS));
        } else if (action.equals("memory_card")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_MEMORY_CARD_SETTINGS));
        } else if (action.equals("network")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_NETWORK_OPERATOR_SETTINGS));
        } else if (action.equals("nfcsharing")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_NFCSHARING_SETTINGS));
        } else if (action.equals("nfc_payment")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_NFC_PAYMENT_SETTINGS));
        } else if (action.equals("nfc_settings")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_NFC_SETTINGS));
        }
        //else if (action.equals("notification_listner")) {
        //    this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_NOTIFICATION_LISTENER_SETTINGS));
        //}
        else if (action.equals("print")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_PRINT_SETTINGS));
        } else if (action.equals("privacy")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_PRIVACY_SETTINGS));
        } else if (action.equals("quick_launch")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_QUICK_LAUNCH_SETTINGS));
        } else if (action.equals("search")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_SEARCH_SETTINGS));
        } else if (action.equals("security")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_SECURITY_SETTINGS));
        } else if (action.equals("settings")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_SETTINGS));
        } else if (action.equals("show_regulatory_info")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_SHOW_REGULATORY_INFO));
        } else if (action.equals("sound")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_SOUND_SETTINGS));
        } else if (action.equals("sync")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_SYNC_SETTINGS));
        } else if (action.equals("usage")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_USAGE_ACCESS_SETTINGS));
        } else if (action.equals("user_dictionary")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_USER_DICTIONARY_SETTINGS));
        } else if (action.equals("voice_input")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_VOICE_INPUT_SETTINGS));
        } else if (action.equals("wifi_ip")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_WIFI_IP_SETTINGS));
        } else if (action.equals("wifi")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_WIFI_SETTINGS));
        } else if (action.equals("wireless")) {
            this.cordova.getActivity().startActivity(new Intent(android.provider.Settings.ACTION_WIRELESS_SETTINGS));
        } else {
             status = PluginResult.Status.INVALID_ACTION;
        }
        
        callbackContext.sendPluginResult(new PluginResult(status, result));
        return true;
    }
}

