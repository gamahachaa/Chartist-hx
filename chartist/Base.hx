package chartist;
//import js.html.svg.Point;
import js.html.svg.Element;
import js.html.svg.GraphicsElement;
import js.html.svg.Point;
import js.html.svg.SVGElement;

/**
 * ...
 * @author bb
 */
@:native("Chartist.Base")
extern class Base
{
	private function new();
	public function on(type:EventType, fnc:Event->Void):Base;
	public function off(type:EventType, fnc:Event->Void):Base;
	public function initialize():Void;
	public function update(data:Data, ?options:BaseOptions, overrid:Bool):Base;
	function detach():Base;

	var container:SVGElement;
	var supportsAnimations:Bool;
	var supportsForeignObject:Bool;
	//var defaultOptions:BaseOptions;
	//var options:BaseOptions;
}
typedef BaseOptions =
{
	var ?plugins:Array<Dynamic>;
	var ?width:String; // Specify a fixed width for the chart as a string (i.e. '100px' or '50%')
	var ?height:String;  // Specify a fixed height  for the chart as a string (i.e. '100px' or '50%')
	
	var ?reverseData:Bool; // If true the whole data is reversed including labels, the series order as well as the whole series data arrays.
}
typedef GridOptions = BaseOptions & {
	
	var ?chartPadding:Padding;
	
	var ?axisY:ScalableAxis;
	var ?high:Float;// Overriding the natural high of the chart allodrawws you to zoom in or limit the charts highest displayed value
	var ?low:Float;// Overriding the natural low of the chart allows you to zoom in or limit the charts lowest displayed value
	var ?referenceValue:Float;// Unless low/high are explicitly set, bar chart will be centered at zero by default. Set referenceValue to null to auto scale.
	var ?showGridBackground:Bool;// If the chart should add a background fill to the .ct-grids group.
	
    
}

typedef BaseClassnames =
{
	var ?label:String;
	var ?series:String;
}
typedef GridClassNames = BaseClassnames & {
	 var chart:String;
	 var labelGroup:String;
	 var grid:String;
	 var gridGroup:String;
	 var gridBackground:String;
	 var vertical:String;
	 var horizontal:String;
	 var start:String;
	 var end:String;
}
typedef Axis = {
	var ?labelInterpolationFnc:(Dynamic, ?Int, ?Array<Dynamic>)->Dynamic;
	var ?labelOffset:Point;
	var ?offset:Int;
	
	var ?position:AxisPosition;
	var ?showGrid:Bool;
	
	var ?showLabel:Bool;
	
}
typedef ScalableAxis = Axis & {
	var ?scaleMinSpace:Int; // This value specifies the minimum width in pixel of the scale steps
	var ?onlyInteger:Bool; // Use only integer values (whole numbers) for the scale steps
}
typedef Padding =  {
	
	var ?right:Float;
	var ?left:Float;
	var ?top:Float;
	var ?bottom:Float;
}
enum abstract AxisPosition(String) {
	var end;
	var	start;
}
typedef Data = {
	var ?labels:Array<Dynamic>;
	var series:Array<Dynamic>;
}
enum abstract EventType(String)
{
	var draw;
	var created;
	//var update;
	var optionsChanged;
	//var initial;
	var data;
}
enum abstract EventSubType(String)
{
	var initial; 
	var grid; 
	var label; 
	var point; 
	var line; 
	var area; 
	var bar; 
	var slice; 
}
typedef Event = {
	var ?type:EventSubType;
	var ?index:Int;
	var ?data:Data;
	var ?axis:Dynamic;
	var ?axisX:Dynamic;
	var ?axisY:Dynamic;
	var ?group: Svg;
	var ?element: Svg;
	var ?x:Float;
	var ?x1:Float;
	var ?x2:Float;
	var ?y:Float;
	var ?y1:Float;
	var ?y2:Float;
	var ?width:Float;
	var ?height:Float;
	var ?text:String;
	var ?value:Point;
	var ?values:Array<Point>;
	var ?meta:Dynamic;
	var ?seriesMeta:Dynamic;
	var ?series:Array<Float>;
	var ?seriesIndex:Float;
	var ?path:Dynamic;
	var ?chartRect:Dynamic;
	var ?bounds:Dynamic;
	var ?svg:Svg;
	var ?options:BaseOptions;
}