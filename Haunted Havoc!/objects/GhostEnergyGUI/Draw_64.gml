/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_colour(c_yellow);
draw_text(40, 60, "GHOST ENERGY:");
draw_set_colour(c_white);

var _str = string(global.current_energy);
draw_text_transformed(40, 90, _str, 2, 2, 0);