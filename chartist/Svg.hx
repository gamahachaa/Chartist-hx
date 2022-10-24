package chartist;
import haxe.extern.EitherType;
import js.html.Node;
import js.html.NodeList;
import js.html.svg.Element;

@:native("Chartist.Svg")
extern class Svg
{
	/**
	* Chartist.Svg creates a new SVG object wrapper with a starting element. You can use the wrapper to fluently create sub-elements and modify them.
	*
	* @memberof Chartist.Svg
	* @constructor
	* @param {String|Element} name The name of the SVG element to create or an SVG dom element which should be wrapped into Chartist.Svg
	* @param {Object} attributes An object with properties that will be added as attributes to the SVG element that is created. Attributes with undefined values will not be added.
	* @param {String} className This class or class list will be added to the SVG element
	* @param {Object} parent The parent SVG wrapper object where this newly created wrapper and it's element will be attached to as child
	* @param {Boolean} insertFirst If this param is set to true in conjunction with a parent element the newly created element will be added as first child element in the parent element
	*/
	public function new(name:EitherType<ElementType,Element>, ?attributes:Dynamic, ?className:String, ?parent:Dynamic, ?insertFirst:Bool = false);
	/**
	* Create a new SVG element whose wrapper object will be selected for further operations. This way you can also create nested groups easily.
	*
	* @memberof Chartist.Svg
	* @param {String} name The name of the SVG element that should be created as child element of the currently selected element wrapper
	* @param {Object} [attributes] An object with properties that will be added as attributes to the SVG element that is created. Attributes with undefined values will not be added.
	* @param {String} [className] This class or class list will be added to the SVG element
	* @param {Boolean} [insertFirst] If this param is set to true in conjunction with a parent element the newly created element will be added as first child element in the parent element
	* @return {Chartist.Svg} Returns a Chartist.Svg wrapper object that can be used to modify the containing SVG data
	*/
	public function elem(name:EitherType<String,Element>, ?attributes:Dynamic, ?className:String, ?parent:Dynamic, ?insertFirst:Bool = false):Svg;
	/**
	* Set attributes on the current SVG element of the wrapper you're currently working on.
	*
	* @memberof Chartist.Svg
	* @param {Object|String} attributes An object with properties that will be added as attributes to the SVG element that is created. Attributes with undefined values will not be added. If this parameter is a String then the function is used as a getter and will return the attribute value.
	* @param {String} [ns] If specified, the attribute will be obtained using getAttributeNs. In order to write namepsaced attributes you can use the namespace:attribute notation within the attributes object.
	* @return {Object|String} The current wrapper object will be returned so it can be used for chaining or the attribute value if used as getter function.
	*/
	public function attr(attributes:EitherType<Dynamic,String>, ?ns:String = ""):Element;
	/**
	* Returns the parent Chartist.SVG wrapper object
	*
	* @memberof Chartist.Svg
	* @return {Chartist.Svg} Returns a Chartist.Svg wrapper around the parent node of the current node. If the parent node is not existing or it's not an SVG node then this function will return null.
	*/
	public function  parent() :Svg;
	/**
	* This method returns a Chartist.Svg wrapper around the root SVG element of the current tree.
	*
	* @memberof Chartist.Svg
	* @return {Chartist.Svg} The root SVG element wrapped in a Chartist.Svg element
	*/
	public function root():Svg;
	/**
	* Find the first child SVG element of the current element that matches a CSS selector. The returned object is a Chartist.Svg wrapper.
	*
	* @memberof Chartist.Svg
	* @param {String} selector A CSS selector that is used to query for child SVG elements
	* @return {Chartist.Svg} The SVG wrapper for the element found or null if no element was found
	*/
	public function querySelector(selector:String):Svg;
	/**
   * Find the all child SVG elements of the current element that match a CSS selector. The returned object is a Chartist.Svg.List wrapper.
   *
   * @memberof Chartist.Svg
   * @param {String} selector A CSS selector that is used to query for child SVG elements
   * @return {Chartist.Svg.List} The SVG wrapper list for the element found or null if no element was found
   */
	public  function querySelectorAll(selector:String):Svg;
	/**
	* Returns the underlying SVG node for the current element.
	*
	* @memberof Chartist.Svg
	* @returns {Node}
	*/
	public function getNode():Node;
  /**
   * This method creates a foreignObject (see https://developer.mozilla.org/en-US/docs/Web/SVG/Element/foreignObject) that allows to embed HTML content into a SVG graphic. With the help of foreignObjects you can enable the usage of regular HTML elements inside of SVG where they are subject for SVG positioning and transformation but the Browser will use the HTML rendering capabilities for the containing DOM.
   *
   * @memberof Chartist.Svg
   * @param {Node|String} content The DOM Node, or HTML string that will be converted to a DOM Node, that is then placed into and wrapped by the foreignObject
   * @param {String} [attributes] An object with properties that will be added as attributes to the foreignObject element that is created. Attributes with undefined values will not be added.
   * @param {String} [className] This class or class list will be added to the SVG element
   * @param {Boolean} [insertFirst] Specifies if the foreignObject should be inserted as first child
   * @return {Chartist.Svg} New wrapper object that wraps the foreignObject element
   */
	public function foreignObject(content:EitherType<Node,String>, attributes:String, className:String, insertFirst:Bool):Svg;
	
	/**
   * This method adds a new text element to the current Chartist.Svg wrapper.
   *
   * @memberof Chartist.Svg
   * @param {String} t The text that should be added to the text element that is created
   * @return {Chartist.Svg} The same wrapper object that was used to add the newly created element
   */
	public function text(t:String):Svg;
	 /**
   * This method will clear all child nodes of the current wrapper object.
   *
   * @memberof Chartist.Svg
   * @return {Chartist.Svg} The same wrapper object that got emptied
   */
	public function empty():Svg;
	public function remove():Svg;
	public function replace(newElement:Svg):Svg;
	public function append(element:Svg, ?insertFirst:Bool = false):Svg;
	public function classes():Array<String>;
	public function addClass(names:String):Svg;
	public function removeClass(names:String):Svg;
	public function removeAllClasses():Svg;
	public function height():Float;
	public function width():Float;
	  /**
   * The animate function lets you animate the current element with SMIL animations. You can add animations for multiple attributes at the same time by using an animation definition object. This object should contain SMIL animation attributes. Please refer to http://www.w3.org/TR/SVG/animate.html for a detailed specification about the available animation attributes. Additionally an easing property can be passed in the animation definition object. This can be a string with a name of an easing function in `Chartist.Svg.Easing` or an array with four numbers specifying a cubic Bézier curve.
   * **An animations object could look like this:**
   * ```javascript
   * element.animate({
   *   opacity: {
   *     dur: 1000,
   *     from: 0,
   *     to: 1
   *   },
   *   x1: {
   *     dur: '1000ms',
   *     from: 100,
   *     to: 200,
   *     easing: 'easeOutQuart'
   *   },
   *   y1: {
   *     dur: '2s',
   *     from: 0,
   *     to: 100
   *   }
   * });
   * ```
   * **Automatic unit conversion**
   * For the `dur` and the `begin` animate attribute you can also omit a unit by passing a number. The number will automatically be converted to milli seconds.
   * **Guided mode**
   * The default behavior of SMIL animations with offset using the `begin` attribute is that the attribute will keep it's original value until the animation starts. Mostly this behavior is not desired as you'd like to have your element attributes already initialized with the animation `from` value even before the animation starts. Also if you don't specify `fill="freeze"` on an animate element or if you delete the animation after it's done (which is done in guided mode) the attribute will switch back to the initial value. This behavior is also not desired when performing simple one-time animations. For one-time animations you'd want to trigger animations immediately instead of relative to the document begin time. That's why in guided mode Chartist.Svg will also use the `begin` property to schedule a timeout and manually start the animation after the timeout. If you're using multiple SMIL definition objects for an attribute (in an array), guided mode will be disabled for this attribute, even if you explicitly enabled it.
   * If guided mode is enabled the following behavior is added:
   * - Before the animation starts (even when delayed with `begin`) the animated attribute will be set already to the `from` value of the animation
   * - `begin` is explicitly set to `indefinite` so it can be started manually without relying on document begin time (creation)
   * - The animate element will be forced to use `fill="freeze"`
   * - The animation will be triggered with `beginElement()` in a timeout where `begin` of the definition object is interpreted in milli seconds. If no `begin` was specified the timeout is triggered immediately.
   * - After the animation the element attribute value will be set to the `to` value of the animation
   * - The animate element is deleted from the DOM
   *
   * @memberof Chartist.Svg
   * @param {Object} animations An animations object where the property keys are the attributes you'd like to animate. The properties should be objects again that contain the SMIL animation attributes (usually begin, dur, from, and to). The property begin and dur is auto converted (see Automatic unit conversion). You can also schedule multiple animations for the same attribute by passing an Array of SMIL definition objects. Attributes that contain an array of SMIL definition objects will not be executed in guided mode.
   * @param {Boolean} guided Specify if guided mode should be activated for this animation (see Guided mode). If not otherwise specified, guided mode will be activated.
   * @param {Object} eventEmitter If specified, this event emitter will be notified when an animation starts or ends.
   * @return {Chartist.Svg} The current element where the animation was added
   */
	public function animate(animations:Dynamic, ?guided:Bool = true, ?eventEmitter:Dynamic):Svg;
	
}
@:native("Chartist.Svg.List")
extern class List
{
	public function new(nodeList:EitherType<Array<Node>,NodeList>);
}
@:native("Chartist.Svg.Easing ")
extern class Easing{
	static public var easeInSine:Array<Float>;
	static public var easeOutSine:Array<Float>;
	static public var easeInOutSine:Array<Float>;
	static public var easeInQuad:Array<Float>;
	static public var easeOutQuad:Array<Float>;
	static public var easeInOutQuad:Array<Float>;
	static public var easeInCubic:Array<Float>;
	static public var easeOutCubic:Array<Float>;
	static public var easeInOutCubic:Array<Float>;
	static public var easeInQuart:Array<Float>;
	static public var easeOutQuart:Array<Float>;
	static public var easeInOutQuart:Array<Float>;
	static public var easeInQuint:Array<Float>;
	static public var easeOutQuint:Array<Float>;
	static public var easeInOutQuint:Array<Float>;
	static public var easeInExpo:Array<Float>;
	static public var easeOutExpo:Array<Float>;
	static public var easeInOutExpo:Array<Float>;
	static public var easeInCirc:Array<Float>;
	static public var easeOutCirc:Array<Float>;
	static public var easeInOutCirc:Array<Float>;
	static public var easeInBack:Array<Float>;
	static public var easeOutBack:Array<Float>;
	static public var easeInOutBack:Array<Float>;
}

enum abstract ElementType(String)
{
	var path;
	var circle;
}