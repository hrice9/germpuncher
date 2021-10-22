/// @description Insert description here
// You can write your code in this editor

num_devices = 1;


// check for the keyboard player input

// if the keyboard player presses "A"
if(keyboard_check_pressed(ord("A"))) {
	
	if(p2_device != -1) {
		if(p1_device == -2) {
			p1_device = -1;
			tokens[0].target_x = 450;
			tokens[0].target_y = room_height/2;
		}
	} else {
		p2_device = -2;
		tokens[0].target_x = room_width/2;
		tokens[0].target_y = tokens[0].start_y;
	}
}

if(keyboard_check_pressed(ord("D"))) {
	
	if(p1_device != -1) {
		if(p2_device == -2) {
			p2_device = -1;
			tokens[0].target_x = room_width - 450;
			tokens[0].target_y = room_height/2;
		}
	} else {
		p1_device = -2;
		tokens[0].target_x = room_width/2;
		tokens[0].target_y = tokens[0].start_y;
	}
}

// poll gamepads
for(var i = 0; i < 16; i++ ) {
	if(gamepad_is_connected(i)) {
		var token = tokens[0];
		for(var j = 0; j < array_length(tokens); j++) {
			if(tokens[j].device == i) {
				token = tokens[j];
			}
		}
		
		num_devices++;
		if(gamepad_button_check_pressed(i, gp_padl)) {
			if(p2_device != i) {
				if(p1_device == -2) {
					p1_device = i;
					token.target_x = 450;
					token.target_y = room_height/2;
				}
			} else {
				p2_device = -2;
				token.target_x = room_width/2;
				token.target_y = tokens[0].start_y;
			}
		}
		
		if(gamepad_button_check_pressed(i, gp_padr)) {
			if(p1_device != i) {
				if(p2_device == -2) {
					p2_device = i;
					token.target_x = room_width - 450;
					token.target_y = room_height/2;
				}
			} else  {
				p1_device = -2;
				token.target_x = room_width/2;
				token.target_y = tokens[0].start_y;
			}
		}
	}
}

ready_to_play = (p1_device > -2) || (p2_device > -2);



if(ready_to_play) {
	if(keyboard_check_pressed(ord("J"))) {
		obj_gameManager.player1_device = p1_device;
		obj_gameManager.player2_device = p2_device;
		show_debug_message(obj_gameManager.player1_device);
		room_goto(rm_characterSelect);
	}
}