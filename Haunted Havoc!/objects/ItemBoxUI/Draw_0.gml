/// @description Insert description here
// You can write your code in this editor
draw_self();

var _item_y = item_pos * 128;
var _xx = bbox_left + 13 ;
var _yy = bbox_top + 13;
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_sprite(spr_Inventory_Selected, item_pos_index, _xx, _yy + _item_y);
item_pos_index += 0.2;
for(var i = 0; i < 3; i += 1)
   {
   if !(item_array[i, item_type] == item_none)
       {
        draw_sprite(item_array[i][ item_sprite], 0, _xx + 32, _yy + 32);
        draw_text(_xx + 8, _yy + 15,  + "COST: " + string(item_array[i, item_costs]));
}
    _yy += 128;
}
