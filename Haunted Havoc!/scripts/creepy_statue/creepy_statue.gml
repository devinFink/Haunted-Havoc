// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function creepy_statue()
{
 if (global.setup_phase == false && on_cooldown == false)
 {
	show_debug_message("test")
	var _inst = instance_create_layer(x+32, y+32, "Items", aoe_damage);
	//6sec? assuming game is 60fps idk
	aoe_inst = _inst;
	alarm[0] = 360;
	on_cooldown = true;
 }
 //instantiate a red aoe circle object to visualize effect,
 
}