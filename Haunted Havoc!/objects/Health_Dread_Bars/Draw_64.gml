/// @description Insert description here
// You can write your code in this editor
var dreadValue;
dreadValue = (global.current_dread / global.max_dread) * 100;
draw_healthbar(100, 850, 150, 650, dreadValue, c_grey, c_purple, c_purple, 2, true, true)

var healthValue;
healthValue = (global.current_health / global.max_health) * 100;
draw_healthbar(160, 850, 210, 650, healthValue, c_grey, c_red, c_red, 2, true, true)

draw_set_color(c_purple)
draw_text(100, 640, "Dread")
draw_set_color(c_red)
draw_text(160, 640, "Health")