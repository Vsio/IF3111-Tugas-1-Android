package carrot_eye.states;
import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import openfl.text.TextFormat;

/**
 * ...
 * @author Biolardi Yoshogi (Vsio Stitched / NeithR)
 */
class State_Title extends FlxState
{
	private var textTrackMode:FlxButton;
	private var textReportMode:FlxButton;
	
	public function new() 
	{
		super();		
	}
	
	override public function create():Void
	{
		super.create();
		
		var tf:TextFormat = new TextFormat();
		tf.size = 20;
		
		textTrackMode = new FlxButton(200, 200, "Tracker Mode", goToTracker);
		textReportMode = new FlxButton(textTrackMode.x, textTrackMode.y + 200, "Report Mode", goToReport);
		
		add(textTrackMode);
		add(textReportMode);
	}
	
	public function goToTracker():Void
	{
		FlxG.switchState(new State_Tracker());
	}
	
	public function goToReport():Void
	{
		FlxG.switchState(new State_Report());
	}
	
}