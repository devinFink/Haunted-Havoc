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
	    with(other) instance_destroy();
	    }
	    }
}
