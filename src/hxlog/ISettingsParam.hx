package hxlog;

import js.node.util.Inspect;

/**
	Constructor: logger settings
	all values are optional and will be pre-filled with default values
**/
typedef ISettingsParam = {
	/**
		Print log `pretty`, as a stringified `json` or prevent printing with `hidden`, default: `pretty`
	**/
	@:optional
	var type : String;
	/**
		Name of the instance name, default: _host name_
	**/
	@:optional
	var instanceName : String;
	/**
		Use the name of the caller type as the name of the logger, default: `false`
	**/
	@:optional
	var setCallerAsLoggerName : Bool;
	/**
		Optional name of the logger instance, default: `undefined`
	**/
	@:optional
	var name : String;
	/**
		Minimum output log level (e.g. debug), default: "silly"
	**/
	@:optional
	var minLevel : String;
	/**
		Optional request ID for grouping logs by a logical request. default: `undefined`
	**/
	@:optional
	var requestId : haxe.extern.EitherType<String, TRequestIdFunction>;
	/**
		Expose stack with EVERY log message, default: `false`
	**/
	@:optional
	var exposeStack : Bool;
	/**
		Get Code Frame of an Error and expose it, default: `true`
	**/
	@:optional
	var exposeErrorCodeFrame : Bool;
	/**
		Capture lines before and after a code frame, default: `5`
	**/
	@:optional
	var exposeErrorCodeFrameLinesBeforeAndAfter : Float;
	/**
		Suppress any log output to std out / std err
	**/
	@:optional
	var suppressStdOutput : Bool;
	/**
		Catch logs going to console (e.g. console.log). Last instantiated Log instance wins
	**/
	@:optional
	var overwriteConsole : Bool;
	/**
		Overwrite colors of log messages of different log levels
	**/
	@:optional
	var logLevelsColors : {
		@:native("0")
		var Zero : TUtilsInspectColors;
		@:native("2")
		var Two : TUtilsInspectColors;
		@:native("1")
		var One : TUtilsInspectColors;
		@:native("3")
		var Three : TUtilsInspectColors;
		@:native("4")
		var Four : TUtilsInspectColors;
		@:native("5")
		var Five : TUtilsInspectColors;
		@:native("6")
		var Six : TUtilsInspectColors;
	};
	/**
		Overwrite colors json highlighting
	**/
	@:optional
	var prettyInspectHighlightStyles : IHighlightStyles;
	/**
		Options to be set for utils._inspectAndHideSensitive when output is set to pretty, default: `setting`
	**/
	@:optional
	var prettyInspectOptions: js.node.Util.InspectOptions;
	/**
		Options to be set for utils._inspectAndHideSensitive when output is set to json (\{ type: "json" \})
	**/
	@:optional
	var jsonInspectOptions: js.node.Util.InspectOptions;
	/**
		DateTime pattern based on Intl.DateTimeFormat.formatToParts with additional milliseconds, default: `year-month-day hour:minute:second.millisecond`
	**/
	@:optional
	var dateTimePattern : String;
	/**
		DateTime timezone, e.g. `utc`, or `Europe/Berlin`, `Europe/Moscow`. You can use `Intl.DateTimeFormat().resolvedOptions().timeZone` for local timezone, default: "utc"
	**/
	@:optional
	var dateTimeTimezone : String;
	/**
		Prefix every log message of this logger.
	**/
	@:optional
	var prefix : Array<Any>;
	/**
		Exclude case-insensitive keys for object passed to `tslog` that could potentially contain sensitive information (e.g. `password` or `Authorization`), default: ["password"]
	**/
	@:optional
	var maskValuesOfKeys: Array<haxe.extern.EitherType<String, Float>>;
	/**
		Mask all occurrences (case-sensitive) from logs (e.g. all secrets from ENVs etc.). Will be replaced with [***]
	**/
	@:optional
	var maskAnyRegEx: Array<haxe.extern.EitherType<String, Float>>;
	/**
		String to use a placeholder to mask sensitive values.
	**/
	@:optional
	var maskPlaceholder : String;
	/**
		Print log message in a new line below meta information, default: `false`
	**/
	@:optional
	var printLogMessageInNewLine : Bool;
	/**
		Display date time at the beginning of a log message, default: `true`
	**/
	@:optional
	var displayDateTime : Bool;
	/**
		Display log level, default: `true`
	**/
	@:optional
	var displayLogLevel : Bool;
	/**
		Display instanceName or not, default: `false`
	**/
	@:optional
	var displayInstanceName : Bool;
	/**
		Display name of the logger. Will only be visible if `name` was set, default: `true`
	**/
	@:optional
	var displayLoggerName : Bool;
	/**
		Display requestId or not, default: `false`
	**/
	@:optional
	var displayRequestId : Bool;
	/**
		Display file path, default "hideNodeModulesOnly"
	**/
	@:optional
	var displayFilePath : String;
	/**
		Display function name, default: `true`
	**/
	@:optional
	var displayFunctionName : Bool;
	/**
		Display type information for each attribute passed.
	**/
	@:optional
	var displayTypes : Bool;
	/**
		Overwrite default std out
	**/
	@:optional
	var stdOut : IStd;
	/**
		Overwrite default std err
	**/
	@:optional
	var stdErr : IStd;
};