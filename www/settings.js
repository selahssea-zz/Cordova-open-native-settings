var NativeSettings = function() {
};

NativeSettings.open = function(setting_name, onsucess, onfail) {
	cordova.exec(onsucess, onfail, "NativeSettings", "open", [setting_name]);
};

module.exports = NativeSettings;