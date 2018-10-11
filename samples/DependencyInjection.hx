import scuts.implicit.Implicit;

typedef AppLogger = {
	function log (msg:String):Void;
}

typedef AppContext = {
	logger : AppLogger,

}


class Test {

	@:implicit public static function appContext (appLogger:AppLogger):AppContext return { logger : appLogger }
	@:implicit public static var logger:AppLogger = { log: msg -> trace(msg) };


	public static function main () {
		log("hello world");

	}


	static function log (msg, ?Ctx:Implicit<AppContext>) {
		Ctx.logger.log(msg);
	}
}