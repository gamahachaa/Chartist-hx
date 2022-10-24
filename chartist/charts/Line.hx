package chartist.charts;
import chartist.Base.Axis;
import chartist.Base.BaseOptions;
import chartist.Base.Data;
import chartist.Base.GridClassNames;
import chartist.Base.GridOptions;
import haxe.extern.EitherType;
import js.html.Node;

/**
 * ...
 * @author bb
 */
@:native("Chartist.Line")
extern class Line extends Base
{
	//public function new(query:EitherType<String,Node> , data:Dynamic, ?options:Dynamic, ?responsiveOptions:Array<Dynamic>) {}
	  /**
   * This method creates a new line chart.
   *
   * @param 	query	EitherType String or Node	A selector query string or directly a DOM element
   * @param 	data	Data	The data object that needs to consist of a labels and a series array
   * @param 	options	LineOptions The options object with options that override the default options. Check the examples for a detailed list.
   * @param 	responsiveOptions	Array of Array of EitherType String or LineOptions	Specify an array of responsive option arrays which are a media query and options object pair => [[mediaQueryString, optionsObject],[more...]]
   * 
   *
   * @example
   * // Create a simple line chart
   * var data = {
   *   // A labels array that can contain any sort of values
   *   labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'],
   *   // Our series array that contains series objects or in this case series data arrays
   *   series: [
   *     [5, 2, 4, 2, 0]
   *   ]
   * };
   *
   * // As options we currently only set a static size of 300x200 px
   * var options = {
   *   width: '300px',
   *   height: '200px'
   * };
   *
   * // In the global name space Chartist we call the Line function to initialize a line chart. As a first parameter we pass in a selector where we would like to get our chart created. Second parameter is the actual data object and as a third parameter we pass in our options
   * new Line('.ct-chart', data, options);
   *
   * @example
   * // Use specific interpolation function with configuration from the Chartist.Interpolation module
   *
   * var chart = new Line('.ct-chart', {
   *   labels: [1, 2, 3, 4, 5],
   *   series: [
   *     [1, 1, 8, 1, 7]
   *   ]
   * }, {
   *   lineSmooth: Chartist.Interpolation.cardinal({
   *     tension: 0.2
   *   })
   * });
   *
   * @example
   * // Create a line chart with responsive options
   *
   * var data = {
   *   // A labels array that can contain any sort of values
   *   labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
   *   // Our series array that contains series objects or in this case series data arrays
   *   series: [
   *     [5, 2, 4, 2, 0]
   *   ]
   * };
   *
   * // In addition to the regular options we specify responsive option overrides that will override the default configutation based on the matching media queries.
   * var responsiveOptions = [
   *   ['screen and (min-width: 641px) and (max-width: 1024px)', {
   *     showPoint: false,
   *     axisX: {
   *       labelInterpolationFnc: function(value) {
   *         // Will return Mon, Tue, Wed etc. on medium screens
   *         return value.slice(0, 3);
   *       }
   *     }
   *   }],
   *   ['screen and (max-width: 640px)', {
   *     showLine: false,
   *     axisX: {
   *       labelInterpolationFnc: function(value) {
   *         // Will return M, T, W etc. on small screens
   *         return value[0];
   *       }
   *     }
   *   }]
   * ];
   *
   * new Line('.ct-chart', data, null, responsiveOptions);
   *
   */
	public function new(query:EitherType<String,Node> , data:Data, ?options:LineOptions, ?responsiveOptions:Array<Array<EitherType<String,LineOptions>>>) {}

	/**
	 * Creates a new chart
	 * @param	options	LineOptions	
	 */
	public function createChart(options:LineOptions):Void {}
	var defaultOptions:LineOptions;
	var options:LineOptions;
	//var responsiveOptions:Array<Array<EitherType<String,LineOptions>>>;
	var responsiveOptions:Array<Array<EitherType<String,LineOptions>>>;
	
}
typedef LineOptions = GridOptions & {
	var ?series:Dynamic;
	var ?axisX:Axis;
	var ?showLine:Bool;
	var ?showPoint:Bool;
	var ?showArea:Bool;
	var ?areaBase:Float; // The base for the area chart that will be used to close the area shape (is normally 0)
	var ?lineSmooth:Bool; // Specify if the lines should be smoothed. This value can be true or false where true will result in smoothing using the default smoothing interpolation function Chartist.Interpolation.cardinal and false results in Chartist.Interpolation.none. You can also choose other smoothing / interpolation functions available in the Chartist.Interpolation module, or write your own interpolation function. Check the examples for a brief description.
    
	
	var ?fullWidth:Bool; // When set to true, the last grid line on the x-axis is not drawn and the chart elements will expand to the full available width of the chart. For the last label to be drawn correctly you might need to add chart padding or offset the last label with a draw event handler.
   
}
typedef LineClassnames = GridClassNames &
{
	 var line:String;
	 var point:String;
	 var area:String;
	 
}