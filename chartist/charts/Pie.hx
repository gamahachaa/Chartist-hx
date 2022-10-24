package chartist.charts;
import chartist.Base.BaseClassnames;
import chartist.Base.BaseOptions;
import chartist.Base.Data;
import chartist.Base.Padding;
import haxe.extern.EitherType;
import js.html.svg.Point;
//import haxe.ui.geom.Rectangle;
import js.html.Node;

/**
 * ...
 * @author bb
 */
@:native("Chartist.Pie")
extern class Pie extends Base
{
	public function new(query:EitherType<String,Node> , data:Data, ?options:PieOptions, ?responsiveOptions:Array<Array<EitherType<String,PieOptions>>>);
	/**
	 * Creates a new chart
	 * @param	options	PieOptions	
	 */
	public function createChart(options:PieOptions):Void;
	/**
   * Determines SVG anchor position based on direction and center parameter
   *
   * @param center
   * @param label
   * @param direction
   * @return {string}
   */
   public function determineAnchorPosition(center:Point, label:Point, ?direction:Direction):String 
	var defaultOptions:PieOptions;
	var options:PieOptions;
	//var responsiveOptions:Array<Array<Dynamic>>;
	var responsiveOptions:Array<Array<EitherType<String,PieOptions>>>;
}
typedef PieOptions = BaseOptions & {
	var ?chartPadding: EitherType<Int, Padding>;
	 var ?labelOffset:Int;
	 var ?startAngle:Float;
	 var ?total:Float; 
	 var ?donut:Bool;
	 var ?donutSolid:Bool;
	 var ?showLabel:Bool;
	 var ?reverseData:Bool;
	 var ?ignoreEmptyValues:Bool; // If true empty values will be ignored to avoid drawing unncessary slices and labels
	var ?classNames:PieClassnames;
	// Specify the donut stroke width, currently done in javascript for convenience. May move to CSS styles in the future.
    // This option can be set as number or string to specify a relative width (i.e. 100 or '30%').
	var ?donutWidth:Dynamic;
	var ?labelDirection:Direction;
	//var ?labelInterpolationFnc:Array<Dynamic>->Dynamic;
	var ?labelInterpolationFnc:(String, ?Int)->String;
	
	 
}
typedef PieClassnames = BaseClassnames &
{
	var ?chartPie:String;
	var ?chartDonut:String;
	var ?slicePie:String;
	var ?sliceDonut:String;
	var ?sliceDonutSolid:String;
}
enum abstract Direction(String) {
	var neutral;
	var	explode;
	var	implode;
}
enum abstract Position(String) {
	var inside;
	var	outside;
	var	center;
}

/*typedef Padding =  {
	
	var right:Float;
	var left:Float;
	var top:Float;
	var bottom:Float;
}*/