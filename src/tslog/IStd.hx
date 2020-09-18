package tslog;

/**
	StdOut and StdErr have to implement a write function (e.g. Stream)
**/
typedef IStd = {
	/**
		stream.Writable
	**/
	dynamic function write(message:String):Void;
};