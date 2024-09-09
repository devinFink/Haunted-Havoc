// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn()
{
	instance_create_layer(x, y, layer_get_id("NPC"), NPC)
}
