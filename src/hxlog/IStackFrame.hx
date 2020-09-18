package hxlog;

/**
	All relevant information about a log message
**/
typedef IStackFrame = {
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