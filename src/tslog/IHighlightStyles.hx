package tslog;

/**
	Possible style settings of utils._inspectAndHideSensitive.styles
	Official Node.js typedefs are missing this interface.
**/
typedef IHighlightStyles = {
	@:optional
	var name : TUtilsInspectColors;
	@:optional
	var special : TUtilsInspectColors;
	@:optional
	var number : TUtilsInspectColors;
	@:optional
	var bigint : TUtilsInspectColors;
	@:optional
	var boolean : TUtilsInspectColors;
	@:optional
	var undefined : TUtilsInspectColors;
	@:optional
	@:native("null")
	var null_ : TUtilsInspectColors;
	@:optional
	var string : TUtilsInspectColors;
	@:optional
	var symbol : TUtilsInspectColors;
	@:optional
	var date : TUtilsInspectColors;
	@:optional
	var regexp : TUtilsInspectColors;
	@:optional
	var module : TUtilsInspectColors;
};