/// @Activates Scare
// You can write your code in this editor

var _inst = instance_create_layer(x+32, y+32, "Items", aoe_health_damage);
aoe_inst = _inst;
alarm_set(2, 3)
show_debug_message("Jack should have worked")
on_cooldown = false;
jack_timer_started = false;