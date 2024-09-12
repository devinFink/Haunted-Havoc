/// @description Insert description here
// You can write your code in this editor
if (global.setup_phase = true)
	instance_destroy(self);
	
if(place_meeting(x, y, aoe_damage)) {
	changeDread(.1, self);
	show_debug_message("Oooohhhh so spppoooookkyyyy")
}


if(place_meeting(x, y, aoe_health_damage)) {
	scare_npc(self)
	show_debug_message("OMG IM SCARED")
}

if(dead) {
	instance_destroy(self)
}

//-----Pathfinding code starts here
//Getting position of each markers based on marker_counter var
var _tx, _ty
_tx = instance_find(obj_marker, global.marker_counter).x
_ty = instance_find(obj_marker, global.marker_counter).y
//If piano is active, set destination coordinates to the active piano
if (instance_number(Stupid_Item3) > 0)
	if (global.piano_active) {
	_tx = piano.x
	_ty = piano.y
	show_debug_message(string(piano.x) + " " + string(piano.y))
}
show_debug_message(instance_number(Stupid_Item3))

//Set pathfinding here
mp_grid_path(global.mpg, npc_path, x, y, _tx, _ty, true);
path_start(npc_path, 3, path_action_stop, true)

//Increase counter by 1 if NPC has reached their marker destination based on marker_counter index
if (NPC.x == instance_find(obj_marker, global.marker_counter).x && NPC.y == instance_find(obj_marker, global.marker_counter).y)
{
	if (global.marker_counter < instance_number(obj_marker) - 1)
	global.marker_counter++;
	else
	instance_destroy(self)
}
