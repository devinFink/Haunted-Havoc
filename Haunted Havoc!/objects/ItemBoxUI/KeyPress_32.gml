/// @description Insert description here
// You can write your code in this editor
if (global.setup_phase && pickedup_item != noone)
{
	var snapped_x = mouse_x div 64 * 64;
	var snapped_y = mouse_y div 64 * 64;
	//show_debug_message(snapped_x)
	//show_debug_message(snapped_y)
	var position_free = true;
	for (var i = 0; i < ds_list_size(global.occupied_positions); i++)
	{
		var pos = ds_list_find_value(global.occupied_positions, i)
		if ((pos[0] == snapped_x) && (pos[1] == snapped_y)) {
			position_free = false; 
			break;
		}
	}
	var coll_obj = collision_circle(mouse_x, mouse_y, 2, obj_wall, 0, 1);

	//Is the mouse colliding with a wall?
	if (coll_obj != noone)
	{
		position_free = false;
	}
	
	
	if (position_free)
	{
		if (spend_energy(item_array[item_pos][item_costs]))
		{
				//put the item down and record the position it was placed 
				audio_play_sound(snd_place, 0, false, 1, 0, random_range(0.9, 1.1))
				pickedup_item.picked_up = false;
				var position = [snapped_x, snapped_y, pickedup_item.item]
				//show_debug_message(pickedup_item.item)
				ds_list_add(global.occupied_positions, position);
				pickedup_item = noone;
		}
	}
	//if (item_array[item_pos][item_amount] < 1)
    //    {
    //    item_array[item_pos][item_type] = item_none;
    //    }
}