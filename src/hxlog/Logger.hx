package hxlog;

/**
	📝 Expressive TypeScript Logger for Node.js
**/
@:jsRequire("tslog", "Logger") extern class Logger {
	function new(?settings:ISettingsParam, ?parentSettings:ISettings);
	private final _logLevels : Dynamic;
	private var _ignoreStackLevels : Dynamic;
	private var _attachedTransports : Dynamic;
	private final _minLevelToStdErr : Dynamic;
	private var _parentOrDefaultSettings : Dynamic;
	private var _mySettings : Dynamic;
	private var _childLogger : Dynamic;
	private var _maskValuesOfKeysRegExp : Dynamic;
	private var _maskAnyRegExp : Dynamic;
	/**
		Readonly settings of the current logger instance. Used for testing.
	**/
	final settings : ISettings;
	/**
		Change settings during runtime
		Changes will be propagated to potential child loggers
	**/
	function setSettings(settings:ISettingsParam, ?parentSettings:ISettings):ISettings;
	/**
		Returns a child logger based on the current instance with inherited settings
	**/
	function getChildLogger(?settings:ISettingsParam):Logger;
	/**
		Attaches external Loggers, e.g. external log services, file system, database
	**/
	function attachTransport(transportLogger:{ dynamic function silly(message:ILogObject):Void; dynamic function trace(message:ILogObject):Void; dynamic function debug(message:ILogObject):Void; dynamic function info(message:ILogObject):Void; dynamic function warn(message:ILogObject):Void; dynamic function error(message:ILogObject):Void; dynamic function fatal(message:ILogObject):Void; }, ?minLevel:String):Void;
	/**
		Logs a silly message.
	**/
	function silly(args:haxe.extern.Rest<Any>):ILogObject;
	/**
		Logs a trace message.
	**/
	function trace(args:haxe.extern.Rest<Any>):ILogObject;
	/**
		Logs a debug message.
	**/
	function debug(args:haxe.extern.Rest<Any>):ILogObject;
	/**
		Logs an info message.
	**/
	function info(args:haxe.extern.Rest<Any>):ILogObject;
	/**
		Logs a warn message.
	**/
	function warn(args:haxe.extern.Rest<Any>):ILogObject;
	/**
		Logs an error message.
	**/
	function error(args:haxe.extern.Rest<Any>):ILogObject;
	/**
		Logs a fatal message.
	**/
	function fatal(args:haxe.extern.Rest<Any>):ILogObject;
	/**
		Helper: Pretty print error without logging it
	**/
	function prettyError(error:js.lib.Error, ?print:Bool, ?exposeErrorCodeFrame:Bool, ?exposeStackTrace:Bool, ?stackOffset:Float, ?stackLimit:Float, ?std:IStd):IErrorObject;
	private var _handleLog : Dynamic;
	private var _buildLogObject : Dynamic;
	private var _buildErrorObject : Dynamic;
	private var _toStackObjectArray : Dynamic;
	private var _printPrettyLog : Dynamic;
	private var _printPrettyError : Dynamic;
	private var _printPrettyStack : Dynamic;
	private var _printPrettyCodeFrame : Dynamic;
	private var _logObjectToJson : Dynamic;
	private var _printJsonLog : Dynamic;
	private var _inspectAndHideSensitive : Dynamic;
	private var _formatAndHideSesitive : Dynamic;
	static var prototype : Logger;
}