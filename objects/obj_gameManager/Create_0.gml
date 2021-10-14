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

target_shake_intensity = 0;
shake_intensity = 0;
