right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

if(global.setup_phase == false) {
	xspd = (right_key - left_key) * move_speed;
	yspd = (down_key - up_key) * move_speed;

	x += xspd;
	y += yspd;
	
	if(xspd > 0)
	{
		image_xscale = -1;
	}
	else if(xspd < 0)
	{
		image_xscale = 1;
	}
}
