package hxlog.dist.interfaces;

typedef ITransportProvider = {
	var minLevel : String;
	var transportLogger : {
		dynamic function silly(message:tslog.ILogObject):Void;
		dynamic function trace(message:tslog.ILogObject):Void;
		dynamic function debug(message:tslog.ILogObject):Void;
		dynamic function info(message:tslog.ILogObject):Void;
		dynamic function warn(message:tslog.ILogObject):Void;
		dynamic function error(message:tslog.ILogObject):Void;
		dynamic function fatal(message:tslog.ILogObject):Void;
	};
};