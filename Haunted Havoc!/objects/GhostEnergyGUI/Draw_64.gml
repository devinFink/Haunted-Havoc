/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_colour(c_yellow);
draw_text(45, 65, "GHOST ENERGY:");
draw_set_colour(c_white);

var _str = string(global.current_energy);
draw_text_transformed(45, 95, _str, 2, 2, 0);

if (drawInsufFundsTxt)
{
	draw_text_transformed(45, 155, "You don't have the energy for this item!", 2, 2, 0);
}

//sound the alarm to turn off text
if (msgPrinted == false)
{
	msgPrinted = true;
	alarm[0] = 180;
}