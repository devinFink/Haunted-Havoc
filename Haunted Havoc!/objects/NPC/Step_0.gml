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
if (instance_number(Stupid_item3) > 0) {
	if (global.piano_active) {
		_tx = Stupid_item3.x
		_ty = Stupid_item3.y
		show_debug_message(string(Stupid_item3.x) + " " + string(Stupid_item3.y))
	}
}
show_debug_message(instance_number(Stupid_Item3))

//Set pathfinding here
//mp_grid_path(global.mpg, npc_path, x, y, _tx, _ty, true);
//path_start(npc_path, 1, path_action_continue, true)
mp_potential_step(_tx, _ty, 1, false)
inst = instance_nearest(x, y, obj_marker);
draw_line(x, y, inst.x, inst.y);

//Increase counter by 1 if NPC has reached their marker destination based on marker_counter index
if (place_meeting(x, y, instance_find(obj_marker, global.marker_counter)))
{
	if (global.marker_counter < instance_number(obj_marker) - 1)
		global.marker_counter++;
	else
		instance_destroy(self)
}
