package;

import flixel.util.FlxSave;
import flixel.FlxSprite;
import flixel.animation.FlxAnimationController;

/**
 * Handy, pre-built Registry class that can be used to store
 * references to objects and other things for quick-access. Feel
 * free to simply ignore it or change it in any way you like.
 */
class Reg
{
	public static inline var ANIM_PLAYER_FILE:String = "assets/images/testAnim.png";
	public static var levels:Array<Dynamic> = [];
	/**
	 * Generic level variable that can be used for cross-state stuff.
	 * Example usage: Storing the current level number.
	 */
	public static var level:Int = 0;
	/**
	 * Generic scores Array that can be used for cross-state stuff.
	 * Example usage: Storing the scores for level.
	 */
	public static var scores:Array<Dynamic> = [];
	/**
	 * Generic score variable that can be used for cross-state stuff.
	 * Example usage: Storing the current score.
	 */
	public static var score:Int = 0;
	/**
	 * Generic bucket for storing different FlxSaves.
	 * Especially useful for setting up multiple save slots.
	 */
	public static var saves:Array<FlxSave> = [];

	public static var test:Int;
	public static var PLAYER_ANIM:FlxAnimationController;

	public function new(){
		test = 15;
	}

	public static function getPlayerAnim(Player:FlxSprite){
		Player.loadGraphic(ANIM_PLAYER_FILE, true, 8);
		Player.animation.add("test", [0,1,2,3,4], 30);
	}

}
