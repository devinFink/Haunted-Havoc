/// @description Insert description here
// You can write your code in this editor
if (pickedup_item == noone && global.setup_phase)
{
	item_pos += -1;

	if (item_pos < 0)
	{
	item_pos = 2;
	}
}