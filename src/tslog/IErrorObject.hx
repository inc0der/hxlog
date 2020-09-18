package tslog;

/**
	Object representing an error with a stack trace
**/
typedef IErrorObject = {
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
		native Error object
	**/
	var nativeError : js.lib.Error;
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