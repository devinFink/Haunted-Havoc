/// @description Insert description here
// You can write your code in this editor
if (global.setup_phase)
	curr_alpha = 1
else
	curr_alpha = 0.4
	
image_alpha = curr_alpha

draw_set_font(fnt_timer)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(curr_alpha)

draw_text(x + sprite_width / 2, y + sprite_height / 2, "End Phase")
draw_set_font(-1)
draw_set_halign(-1)
draw_set_alpha(1)