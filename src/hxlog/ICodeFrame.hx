package hxlog;

/**
	Code frame of an error
**/
typedef ICodeFrame = {
	var firstLineNumber : Float;
	var lineNumber : Float;
	var columnNumber : Null<Float>;
	var linesBefore : Array<String>;
	var relevantLine : String;
	var linesAfter : Array<String>;
};