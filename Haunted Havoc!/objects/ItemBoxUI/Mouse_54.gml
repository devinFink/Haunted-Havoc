/// @description Insert description here
// You can write your code in this editor

if (global.setup_phase && !(item_array[item_pos][item_type] == item_none) && pickedup_item == noone)
    {
    var _type = item_array[item_pos][item_type];
    var _sprite = item_array[item_pos][item_sprite];
    var _inst = instance_create_layer(mouse_x, mouse_y, "Items", obj_item_base);
	pickedup_item = _inst;
    with(_inst)
        {
        item = _type;
		show_debug_message(item)
        sprite_index = _sprite;
		_inst.picked_up = true;
        }

    //if (item_array[item_pos][item_amount] < 1)
    //    {
    //    item_array[item_pos][item_type] = item_none;
    //    }
    }
	
