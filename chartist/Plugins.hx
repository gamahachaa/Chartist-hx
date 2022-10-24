package chartist;
import js.Function;
import js.html.svg.Point;

/**
 * ...
 * @author bb
 */

@:native("Chartist.plugins")
extern class Plugins 
{
	@:native("tooltip")
	public static function Tooltip(?defaultOptions:TooltipOptions):Dynamic{};
	
}
typedef TooltipOptions = {
	var ?currency:String;
	var ?tooltipFnc:(String,String)->String;
	var ?transformTooltipTextFnc:(String)->String;
	var ?currencyFormatCallback:(String, ?TooltipOptions)->String;
	var ?tooltipOffset:Point;
	var ?anchorToPoint:Bool;
	var ?appendToBody:Bool;
	var ?metaIsHTML:Bool;
	var ?pointClass:String;
	@:native("class") var ?class_:String;
}