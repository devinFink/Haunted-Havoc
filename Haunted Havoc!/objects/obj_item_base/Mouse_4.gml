/// @description Insert description here
// You can write your code in this editor

starting_x= x-mouse_x;
starting_y= y-mouse_y;

if picked_up {
	picked_up = false;
}
else {
	picked_up = true;
}

var _pos = 0;
var _type = item;
var _sprite = sprite_index;

with(ItemBoxUI)
    {
    while (_pos < 5)
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
    if (_pos > 4)
        {
        _pos = 0;
        while (_pos < 5)
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
if (_pos < 5)
    {
    item_array[_pos][item_type] = _type;
    item_array[_pos][item_sprite] = _sprite;
    item_array[_pos][item_amount] += 1;
    with(other) instance_destroy();
    }
    }