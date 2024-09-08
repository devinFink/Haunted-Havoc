right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

xspd = (right_key - left_key) * move_speed;
yspd = (down_key - up_key) * move_speed;

x += xspd;
y += yspd;
