/// @description Insert description here
// You can write your code in this editor

display_p1.sprite_index = displays[selected_p1];
display_p2.sprite_index = displays[selected_p2];


if(ready) {
	get_ui_inputs(obj_gameManager.player1_device);
	if(select) {
		room_goto(rm_arena);
		obj_gameManager.player1 = characters[selected_p1];
		obj_gameManager.player2 = characters[selected_p2];
	}
	
	get_ui_inputs(obj_gameManager.player2_device);
	if(select) {
		room_goto(rm_arena);
		obj_gameManager.player1 = characters[selected_p1];
		obj_gameManager.player2 = characters[selected_p2];
	}
	
	if(obj_gameManager.player1_device == -2 || obj_gameManager.player2_device == -2) {
		current_player = obj_gameManager.player1_device == -2 ? obj_gameManager.player2_device : obj_gameManager.player1_device;
		
		get_ui_inputs(current_player);
		if(back) {
			if(current_player == obj_gameManager.player1_device) {
				locked_in_p2 = false;
				ready = false;
			} else {
				locked_in_p1 = false;
				ready = false;
			}
		}
		
	} else {
		get_ui_inputs(obj_gameManager.player1_device);
		if(back) {
			locked_in_p1 = false;
			ready = false;
		}
	
		get_ui_inputs(obj_gameManager.player2_device);
		if(back) {
			locked_in_p2 = false;
			ready = false;
		}
	}
	
	return;
}


if(obj_gameManager.player1_device == -2 || obj_gameManager.player2_device == -2) {
	// there is only one player active, they must pick both characters
	current_player = obj_gameManager.player1_device == -2 ? obj_gameManager.player2_device : obj_gameManager.player1_device;
	show_debug_message(current_player);
	
	if(current_player == obj_gameManager.player1_device) {
		// do player 1 then do player 2
		if(!locked_in_p1) {
			get_ui_inputs(current_player);
		
			dir = right - left;
			selected_p1 -= dir;
			selected_p1 = selected_p1%buttons_len;
			if(selected_p1 < 0) selected_p1 = buttons_len - 1;
			
			
			if(back) room_goto(rm_controllerSelect);
			
			
			if(select) locked_in_p1 = true;
		} else if(!locked_in_p2) {
			// do player 2
			
			get_ui_inputs(current_player);
			
			dir = right - left;
			selected_p2 -= dir;
			selected_p2 = selected_p2%buttons_len;
			if(selected_p2 < 0) selected_p2 = buttons_len - 1;
			
			
			if(back) locked_in_p1 = false;
			
			
			if(select) locked_in_p2 = true;
		}
	}
	
	else if(current_player == obj_gameManager.player2_device) {
		if(!locked_in_p2) {
			// do player 2
			
			get_ui_inputs(current_player);
			
			dir = right - left;
			selected_p2 -= dir;
			selected_p2 = selected_p2%buttons_len;
			if(selected_p2 < 0) selected_p2 = buttons_len - 1;
			
			
			if(back) room_goto(rm_controllerSelect);
			
			
			if(select) locked_in_p2 = true;
		} else if(!locked_in_p1) {
			// do player 1
			get_ui_inputs(current_player);
		
			dir = right - left;
			selected_p1 -= dir;
			selected_p1 = selected_p1%buttons_len;
			if(selected_p1 < 0) selected_p1 = buttons_len - 1;
			
			
			if(back) locked_in_p2 = false;
			
			
			if(select) locked_in_p1 = true;
		}
	}
	
} else {
	// both players are human and should be picked by their respective players
	#region Player 1
	
	if(!locked_in_p1) {
		get_ui_inputs(obj_gameManager.player1_device);
		
		dir = right - left;
		selected_p1 -= dir;
		selected_p1 = selected_p1%buttons_len;
		if(selected_p1 < 0) selected_p1 = buttons_len - 1;
		
		if(back) room_goto(rm_controllerSelect);
		
		if(select) locked_in_p1 = true;
		
	} else {
		if(back) locked_in_p1 = false;
	}
	
	#endregion
	
	
	#region Player 2
	
	if(!locked_in_p2) {
		get_ui_inputs(obj_gameManager.player2_device);
		
		dir = right - left;
		selected_p2 -= dir;
		selected_p2 = selected_p2%buttons_len;
		if(selected_p2 < 0) selected_p2 = buttons_len - 1;
		
		if(back) room_goto(rm_controllerSelect);
		
		if(select) locked_in_p2 = true;
		
	} else {
		if(back) locked_in_p2 = false;
	}
	
	#endregion
}

ready = locked_in_p1 && locked_in_p2;


