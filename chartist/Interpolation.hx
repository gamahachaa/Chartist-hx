package chartist;

/**
 * ...
 * @author bb
 */
@:native("Chartist.Interpolation")
/**
 * @todo type interpolation options
 */
extern class Interpolation 
{

	/**
	 * This interpolation function does not smooth the path and the result is only containing lines and no curves.
	 * @param	options
	 * @return
	 */
	public static function none(options:Dynamic):Dynamic{}
	public static function cardinal(options:Dynamic):Dynamic{}
	public static function simple(options:Dynamic):Dynamic{}
	public static function step(options:Dynamic):Dynamic{}
}