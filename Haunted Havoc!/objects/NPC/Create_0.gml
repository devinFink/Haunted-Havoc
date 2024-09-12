fear_list = [FEAR_TYPES.GHOST]
dead = false;

//Set NPC starting position
npc_path = path_add()
global.marker_counter = 0
global.mpg = mp_grid_create(0, 0, 45, 27, 64, 64)
mp_grid_add_instances(global.mpg, obj_wall, false);

x = instance_find(obj_marker, instance_number(obj_marker) - 1).x
y = instance_find(obj_marker, instance_number(obj_marker) - 1).y