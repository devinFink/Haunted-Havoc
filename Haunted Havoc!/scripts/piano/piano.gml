// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function piano(){
	if (global.setup_phase == false)
	{
		show_debug_message("Piano is calling correctly")
		//6sec? assuming game is 60fps idk
		alarm[1] = 180;
		on_cooldown = true;
		global.piano_active = true;
		//instantiate a red aoe circle object to visualize effect,
		piano_timer_started = true; 
	}	
}