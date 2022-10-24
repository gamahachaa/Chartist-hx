package chartist;
import chartist.charts.Line;
import haxe.extern.EitherType;
import js.html.Node;

/**
 * ...
 * @author bb
 */
class Demo
{
	/**
	* Simple line chart
	*/
	public static function testLine1(container:EitherType<String,Node>)
	{
		var data =
		{
			labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
			series: [
				[12.0, 9.0, 7.0, 8.0, 5.0],
				[2.0, 1.0, 3.5, 7.0, 3.0],
				[1.0, 3.0, 4.0, 5.0, 6.0]
			]
		}
		var l:Line = new Line(container, data,
		{
			fullWidth: true,
			chartPadding: {
				right: 40
			}
		});
	}
}