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