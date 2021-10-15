

if(global.ground_height == 0) {
	var half_room_width = room_width/2;
	while(!position_meeting(half_room_width, global.ground_height, obj_collider)) {
		global.ground_height ++;
		//show_debug_message(global.ground_height);
	}
}
p1 = instance_create_layer(250, global.ground_height - 1, "Fighters", obj_gameManager.player1);
p2 = instance_create_layer(room_width - 250, global.ground_height - 1, "Fighters", obj_gameManager.player2);

p1.dev_num = -2;
p2.dev_num = -2;

p1_score = obj_gameManager.player1_match_score;
p2_score = obj_gameManager.player2_match_score;

count_time = false;
match_time = 90 * 60;
time_remaining = match_time;
alarm[0] = 3 * 60;