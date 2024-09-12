/// @description Insert description here
// You can write your code in this editor


starting_x= x-mouse_x;
starting_y= y-mouse_y;

if (global.setup_phase)
{
	var _pos = 0;
	var _type = item;
	var _sprite = sprite_index;
	
	with(ItemBoxUI)
	    {
	    while (_pos < 3)
	        {
	        if (item_array[_pos][item_type] == _type)
	            {
	            break;
	            }
	        else
	            {
	            _pos += 1;
	            }
	        }
	    if (_pos > 2)
	        {
	        _pos = 0;
	        while (_pos < 3)
	            {
	            if (item_array[_pos][item_type] == item_none)
	                {
	                break;
	                }
	            else
	                {
	                _pos += 1;
	                }
	            }
	        }
	if (_pos < 3)
	    {
	    item_array[_pos][item_type] = _type;
	    item_array[_pos][item_sprite] = _sprite;
		//pickup item thats placed and return money
		
	
		if(ItemBoxUI.pickedup_item == noone)
		{
			var snapped_x = mouse_x div 64 * 64;
			var snapped_y = mouse_y div 64 * 64;
			//want to remove pos data from list when removing item
			for (var i = 0; i < ds_list_size(global.occupied_positions); i++)
			{
				var pos = ds_list_find_value(global.occupied_positions, i)
				show_debug_message(pos)
				if ((pos[0] == snapped_x) && (pos[1] == snapped_y)) 
				{
					increase_energy(item_array[pos[2]-1][item_costs])
					ds_list_delete(global.occupied_positions,i);
				}
			}
			show_debug_message(" ")
		}
		ItemBoxUI.pickedup_item = noone;
	    with(other) instance_destroy();
	    }
	    }
}
