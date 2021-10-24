

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

timeout = false;



if(0 == 1) {
	var layer_id = layer_get_id("Background");
	var back_id = layer_background_get_id(layer_id);
	layer_background_change(back_id, spr_groceryStoreBackground);
	audio_play_sound(snd_groceryStoreBackground1, 0, true);
} else {
	var layer_id = layer_get_id("Background");
	var back_id = layer_background_get_id(layer_id);
	layer_background_change(back_id, spr_apartment);
	
	var num_flys = irandom_range(5, 10);
	// Create some flies OMEGALUL
	for(var i = 0; i < num_flys; i ++) {
		var randx = 427 + irandom_range(-60, 60);
		var randy = 624 + irandom_range(-60, 60);
		var fly = instance_create_layer(randx, randy, layer, obj_fly);
		set_fly_path(fly);
	}
	
	num_flys = irandom_range(7, 9);
	for(var i = 0; i < num_flys; i++) {
		var randx = 887 + irandom_range(-50, 50);
		var randy = 542 + irandom_range(-50, 50);
		var fly = instance_create_layer(randx, randy, layer, obj_fly);
		set_fly_path(fly);
	}
}