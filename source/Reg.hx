package;

import flixel.util.FlxSave;
import flixel.animation.FlxAnimationController;

/**
 * Handy, pre-built Registry class that can be used to store
 * references to objects and other things for quick-access. Feel
 * free to simply ignore it or change it in any way you like.
 */
class Reg
{

	public static inline var ANIM_PLAYER_FILE:String = "images/testAnim.png";
	public static var levels:Array<Dynamic> = [];
	public static var level:Int = 0;
	public static var scores:Array<Dynamic> = [];
	public static var score:Int = 0;
	public static var saves:Array<FlxSave> = [];

	public static var test:Int;
	public static var PLAYER_ANIM:FlxAnimationController;

	public function new(){
		test = 15;
	}

	public static function getPlayerAnim(Player:FlxSprite){
		Player.loadGraphic(ANIM_PLAYER_FILE, true, 8);
		Player.animation.add("test", [0,1,2,3,4], 30);
		/*Player.animation.add("run", [1, 2, 3, 0], 12);
		Player.animation.add("jump", [4]);
		Player.animation.add("idle_up", [5]);
		Player.animation.add("run_up", [6, 7, 8, 5], 12);
		Player.animation.add("jump_up", [9]);
		Player.animation.add("jump_down", [10]);*/
	}

}
