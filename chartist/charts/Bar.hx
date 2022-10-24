package chartist.charts;
import chartist.Base.BaseClassnames;
import chartist.Base.BaseOptions;
import chartist.Base.Data;
import chartist.Base.GridClassNames;
import chartist.Base.GridOptions;
import chartist.Base.ScalableAxis;
import haxe.extern.EitherType;
import js.html.Node;

/**
 * ...
 * @author bb
 */
@:native("Chartist.Bar")
extern class Bar extends Base
{
   /**
   * This method creates a new bar chart and returns API object that you can use for later changes.
   *
   * @memberof Chartist.Bar
   * @param 	query	EitherType String or Node	A selector query string or directly a DOM element
   * @param 	data	Data	The data object that needs to consist of a labels and a series array
   * @param 	options	BarOptions The options object with options that override the default options. Check the examples for a detailed list.
   * @param 	responsiveOptions	Array of Array of EitherType String or BarOptions	Specify an array of responsive option arrays which are a media query and options object pair => [[mediaQueryString, optionsObject],[more...]]
   *
   * @example
   * // Create a simple bar chart
   * var data = {
   *   labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'],
   *   series: [
   *     [5, 2, 4, 2, 0]
   *   ]
   * };
   *
   * // In the global name space Chartist we call the Bar function to initialize a bar chart. As a first parameter we pass in a selector where we would like to get our chart created and as a second parameter we pass our data object.
   * new Bar('.ct-chart', data);
   *
   * @example
   * // This example creates a bipolar grouped bar chart where the boundaries are limitted to -10 and 10
   * new Bar('.ct-chart', {
   *   labels: [1, 2, 3, 4, 5, 6, 7],
   *   series: [
   *     [1, 3, 2, -5, -3, 1, -6],
   *     [-5, -2, -4, -1, 2, -3, 1]
   *   ]
   * }, {
   *   seriesBarDistance: 12,
   *   low: -10,
   *   high: 10
   * });
   *
   */
	public function new(query:EitherType<String,Node> , data:Data, ?options:BarOptions, ?responsiveOptions:Array<Array<EitherType<String,BarOptions>>>) {}
	/**
	 * Creates a new chart
	 * @param	options	BarOptions	
	 */
	public function createChart(options:BarOptions):Void {}
	var defaultOptions:Dynamic;
	var options:BarOptions;
	var responsiveOptions:Array<Array<EitherType<String,BarOptions>>>;
}
typedef BarOptions = GridOptions & {
	var ?axisX:ScalableAxis;
	var ?seriesBarDistance:Int;// Specify the distance in pixel of bars in a group
	var ?distributeSeries:Bool; // If set to true then each bar will represent a series and the data array is expected to be a one dimensional array of data values rather than a series array of series. This is useful if the bar chart should represent a profile rather than some data over time.

	var ?horizontalBars:Bool;
	var ?stackBars:Bool;
	var ?stackMode:Bool; // If set to 'overlap' this property will force the stacked bars to draw from the zero line.
    // If set to 'accumulate' this property will form a total for each series point. This will also influence the y-axis and the overall bounds of the chart. In stacked mode the seriesBarDistance property will have no effect.
	
}
typedef BarClassnames = GridClassNames &
{
	 var horizontalBars:String; 
	 var bar:String; 
}
enum abstract StackBarMode(String) {
	var overlap;
	var	accumulate;
}