package;

import scuts.syntax.ApiOf;
import scuts.syntax.ApiDef;

@:structInit class Vec2 {
	var x : Float;
	var y : Float;
}

@:structInit class Circle {
	var pos : Float;
	var radius: Float;
}

@:structInit class Rect {
	var pos : Vec2;
	var size: Vec2;
}

@:structInit class Canvas {
	var context2D:Context2D;
}

interface Render<T> extends ApiDef {
	function render (v:T, canvas:Canvas):Void;
}

class RenderApi implements ApiOf<Render<_>> {

}

class RenderRect implements Render<Rect> {
	public function render (v:Rect, canvas:Canvas):Void {
		trace("render rect");
	}
}

class RenderCircle implements Render<Circle> {
	public function render (v:Circle, canvas:Canvas):Void {
		trace("render rect");
	}
}

class Test {
  static function main () {

	  js.Browser.document.createCanvas();
	  var canvas:Canvas = { context2D: }
  }

}