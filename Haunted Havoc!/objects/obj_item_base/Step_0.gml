/// @description Insert description here
// You can write your code in this editor

if picked_up {
	x = (mouse_x -32);
	y = (mouse_y -32);
	move_snap(64, 64)
	
}
else {
	x = x;
	y = y;
}

// apparently when i place an item,
// i instantiate a obj_item_base instead of a stupid_item#, long term obv bad because I dont want
// all my code in obj_item_base, and would like stupid_item# hold the functionality,
// but w/e for prototype its ok to put it all in obj_item_base...
if (global.setup_phase == false)
 {
	if (distance_to_object(PlayerCharacter) < 15 && on_cooldown == false) {draw_interact = true} else {draw_interact = false}
	
	//depending on item instance it will run its individual script once when space is pressed
	if (distance_to_object(PlayerCharacter) < 15 && keyboard_check_pressed(vk_space))
	{
		switch(item){
		case 1: 
			creepy_statue();
			break;
		case 2:
			jack_in_the_box();
			break;
		case 3:
			piano();
			break;
		default:
			show_debug_message("shouldnt get here");
		}
	}
 }