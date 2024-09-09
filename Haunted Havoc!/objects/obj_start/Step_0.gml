/// @description Insert description here
// You can write your code in this editor

is_mouse_over = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (global.setup_phase && is_mouse_over && mouse_check_button_pressed(mb_left))
{
	global.setup_phase = false
	spawn()
}