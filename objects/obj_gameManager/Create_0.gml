/// @description Insert description here
// You can write your code in this editor

// Set global variables
global.time_scale = 1;
global.grav = 2;
global.show_hitboxes = true;
global.ground_height = 0;
var half_room_width = room_width/2;
while(!position_meeting(half_room_width, global.ground_height, obj_collider)) {
	global.ground_height ++;
	show_debug_message(global.ground_height);
}

elems = layer_get_all_elements(layer);
for(var i = 0; i < array_length(elems); i++) {
	show_debug_message(elems[i]);
	show_debug_message(instance_id_get(elems[i]));
}