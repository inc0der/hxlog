package hxlog;

/**
	LogObject that can safely be "JSON.stringifed". All circular structures have been "util.inspected" into strings
**/
typedef ILogObjectStringifiable = {
	/**
		Log arguments
	**/
	var argumentsArray : Array<haxe.extern.EitherType<String, IErrorObjectStringifiable>>;
	/**
		Optional name of the instance this application is running on.
	**/
	@:optional
	var instanceName : String;
	/**
		Optional name of the logger or empty string.
	**/
	@:optional
	var loggerName : String;
	/**
		Name of the host
	**/
	var hostname : String;
	/**
		Optional unique request ID
	**/
	@:optional
	var requestId : String;
	/**
		Timestamp
	**/
	var date : js.lib.Date;
	/**
		Log level name (e.g. debug)
	**/
	var logLevel : String;
	/**
		Log level ID (e.g. 3)
	**/
	var logLevelId : Int;
	/**
		Optional Log stack trace
	**/
	@:optional
	var stack : Array<IStackFrame>;
	/**
		Convert a LogObject into a JSON, is used by JSON.stringify()
	**/
	dynamic function toJSON():ILogObjectStringifiable;
	/**
		Relative path based on the main folder
	**/
	var filePath : String;
	/**
		Full path
	**/
	var fullFilePath : String;
	/**
		Name of the file
	**/
	var fileName : String;
	/**
		Line number
	**/
	var lineNumber : Null<Float>;
	/**
		Column Name
	**/
	var columnNumber : Null<Float>;
	/**
		Called from constructor
	**/
	var isConstructor : Null<Bool>;
	/**
		Name of the function
	**/
	var functionName : Null<String>;
	/**
		Name of the class
	**/
	var typeName : Null<String>;
	/**
		Name of the Method
	**/
	var methodName : Null<String>;
};