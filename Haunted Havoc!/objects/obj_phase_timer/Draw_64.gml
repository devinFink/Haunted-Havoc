/// @description Insert description here
// You can write your code in this editor
draw_self()

// Font settings
draw_set_font(fnt_timer)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// Draw timer text
if (!global.setup_phase)
{
	if (!timer_started)
	{
		timer_started = true
		alarm_set(0, global.scare_time * 60) // 60 fps
	}
	draw_set_color(c_red)
	draw_text(x + sprite_width / 2, y + (sprite_height / 2), "Scare Phase!")
	draw_text(x + sprite_width / 2, y + (sprite_height / 2) +25, alarm_get(0) / 60)
}
else
{
	draw_set_color(c_green)
	draw_text(x + sprite_width / 2, y + (sprite_height / 2), "Setup Phase")
}

draw_set_color(c_white)
draw_set_font(-1)
draw_set_halign(-1)