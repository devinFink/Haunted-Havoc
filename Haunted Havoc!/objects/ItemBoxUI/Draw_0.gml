/// @description Insert description here
// You can write your code in this editor
draw_self();

var _item_y = item_pos * 128;
var _xx = bbox_left + 13 ;
var _yy = bbox_top + 13;

draw_sprite(spr_Inventory_Selected, item_pos_index, _xx, _yy + _item_y);

item_pos_index += 0.2;
for(var i = 0; i < 5; i += 1)
    {
    if !(item_array[i, item_type] == item_none)
        {
        draw_sprite(item_array[i, item_sprite], 0, _xx, _yy);
        draw_text(_xx + 8, _yy + 9,  + string(item_array[i, item_amount]));
        }
    _yy += 128;
}