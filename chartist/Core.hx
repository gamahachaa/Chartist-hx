package chartist;
import js.html.svg.Point;

/**
 * ...
 * @author bb
 */
@:native("Chartist")
extern class Core 
{
	public static function getMultiValue(value:Dynamic):Dynamic;
	public static function alphaNumerate(fromInt:Int):String;
	public static function polarToCartesian  (centerX:Float, centerY:Float, radius:Float, angleInDegrees:Float):Point;
	public static var precision:Int;
	
}