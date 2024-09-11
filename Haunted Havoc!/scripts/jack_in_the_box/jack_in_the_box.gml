// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jack_in_the_box(){
	if (global.setup_phase == false)
	{
		show_debug_message("Jack is calling correctly")
		//6sec? assuming game is 60fps idk
		alarm[1] = 90;
		on_cooldown = true;
		jack_timer_started = true;
		//instantiate a red aoe circle object to visualize effect,
	}
}