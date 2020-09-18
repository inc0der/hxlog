package hxlog;

/**
	ErrorObject that can safely be "JSON.stringifed". All circular structures have been "util.inspected" into strings
**/
typedef IErrorObjectStringifiable = {
	/**
		native Error object
	**/
	var nativeError : Any;
	var errorString : String;
	/**
		Is this object an error?
	**/
	var isError : Bool;
	/**
		Name of the error
	**/
	var name : String;
	/**
		Error message
	**/
	var message : String;
	/**
		additional Error details
	**/
	var details : Dynamic;
	/**
		Stack trace of the error
	**/
	var stack : Array<IStackFrame>;
	/**
		Code frame of the error
	**/
	@:optional
	var codeFrame : ICodeFrame;
};