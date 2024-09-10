/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
pickedup_item = noone;
global.occupied_positions = ds_list_create();
item_pos = 0;
item_pos_index = 0;
item_array = array_create(3);
for(var i = 0; i < 3; i += 1)
    {
		item_array[i] = array_create(3);
    //item_array[i][item_type] = item_none;
    //item_array[i][item_sprite] = -1;
    //item_array[i][item_amount] = 0;
    }

item_array[0][item_type] = item1
item_array[1][item_type] = item2
item_array[2][item_type] = item3
//item_array[3][item_type] = item4
//item_array[4][item_type] = item5
item_array[0][item_sprite] = Stupid_Item;
item_array[1][item_sprite] = Stupid_Item2;
item_array[2][item_sprite] = Stupid_Item3;
//item_array[3][item_sprite] = Stupid_Item4;
//item_array[4][item_sprite] = Stupid_Item5;
item_array[0][item_costs] = 1;
item_array[1][item_costs] = 2;
item_array[2][item_costs] = 3;
//item_array[3][item_amount] = 1;
//item_array[4][item_amount] = 1;