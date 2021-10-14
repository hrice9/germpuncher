/// @description Insert description here
// You can write your code in this editor

// Set global variables
global.time_scale = 1;
global.grav = 2;
global.show_hitboxes = true;
global.ground_height = 0;
/*
var half_room_width = room_width/2;
while(!position_meeting(half_room_width, global.ground_height, obj_collider)) {
	global.ground_height ++;
	show_debug_message(global.ground_height);
}
*/

target_shake_intensity = 0;
shake_intensity = 0;




player1 = obj_germaphobe;
player2 = obj_germaphobe;
player1_device = -1;
player2_device = 0;

player1_match_score = 0;
player2_match_score = 0;

//game_winner = "Me! The Developer! If you are seeing this message, that means something has gone terribly wrong and you should probably hide because the world is likely going to explode any day now!";