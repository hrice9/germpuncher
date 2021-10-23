/// @function			get_inputs(num)
/// @description		Generalized function to get player inputs
/// @param {int} num	The device number to check for inputs. -1 for keyboard, 0-3 for xbox controllers, 4-15 for other gamepads
function get_inputs(num){
	// This is a really hacky solution to getting multiple input devices, but it works and I will not complain
	
	left    = 0;
	right   = 0;
	down    = 0;
	kick    = 0;
	jump    = 0;
	punch   = 0;
	kick    = 0;
	up      = 0;
	special = 0;
	
	if(num == -1) {
		left    = keyboard_check(ord("A"));
		right   = keyboard_check(ord("D"));
		down    = keyboard_check(ord("S"));
		up      = keyboard_check(ord("W"));
		punch   = keyboard_check_pressed(ord("J"));
		kick    = keyboard_check_pressed(ord("K"));
		special = keyboard_check_pressed(ord("L"));
		jump    = keyboard_check_pressed(ord("W"));
	}

	
	if(num >= 0) {
	
		if(gamepad_is_connected(num)) {
			// get the values from the gamepad
			left    = gamepad_button_check(num, gp_padl);
			right   = gamepad_button_check(num, gp_padr);
			down    = gamepad_button_check(num, gp_padd);
			up      = gamepad_button_check(num, gp_padu);
			jump    = gamepad_button_check_pressed(num, gp_padu);
			punch   = gamepad_button_check_pressed(num, gp_face1);
			kick    = gamepad_button_check_pressed(num, gp_face2);
			special = gamepad_button_check_pressed(num, gp_face3);
		
		} else {
			// Take no inputs because the device is not connected
			left    = 0;
			right   = 0;
			down    = 0;
			kick    = 0;
			jump    = 0;
			punch   = 0;
			kick    = 0;
			up      = 0;
			special = 0;
		}
	}
}


/// @function			get_command_inputs(num)
/// @description		Construct and parse the input string for the player
/// @param {int} num	The device number to check for inputs
function get_command_inputs(num) {
	get_inputs(num);
	
	horizontal = right - left;
	vertical = down - up;
	
	var value = "";
	
	if(prev_horizontal != horizontal || prev_vertical != vertical) {
		if(vertical != 0) {
			value += vertical > 0 ? "D" : "U";
		}
		
		if(horizontal != 0) {
			value += check_horizontal();
		}
	}
	
	if(punch) {
		if(value == "")
		{
			if(vertical != 0) {
				value += check_vertical();
			}
		
			if(horizontal != 0) {
				value += check_horizontal();
			}
		}
		value += "P";
	}
	
	if(kick) {
		if(vertical != 0) {
			value += check_vertical();
		}
		
		if(horizontal != 0) {
			value += check_horizontal();
		}
		value += "K";
	}
	
	if(special) {
		value = "S";
	}
	
	prev_horizontal = horizontal;
	prev_vertical = vertical;
	
	if(value != "") {
		// Push the last command into the buffer
		array_push(input_chain, value);
		
		// Set the timeout
		// After a set number of frames, clear the input_chain
		alarm[fighterAlarms.inputTimeout] = 15; // Have a global input timeout
		
		while (true) {
			var chain_len = array_length(input_chain);
			
			// Input chain length must be greater than 0
			if(chain_len > 0) {
				// Parse for special moves
				if(parse_moveset(special_inputs, chain_len)) {
					break;
				}
				
				// Parse for command moves
				if(parse_moveset(command_inputs, chain_len)) {
					break;
				}
				
				// Parse for neutral moves
				if(parse_moveset(neutral_inputs, chain_len)) {
					break;
				}
			}
			
			// if no moves were executed, break from the loop
			break;
		}
	}
}


function get_ui_inputs(num) {
	left    = 0;
	right   = 0;
	up      = 0;
	down    = 0;
	select  = 0;
	back    = 0;
	
	if(num == -1) {
		// keyboard
		left    = keyboard_check_pressed(ord("A"));
		right   = keyboard_check_pressed(ord("D"));
		up      = keyboard_check_pressed(ord("W"));
		down    = keyboard_check_pressed(ord("S"));
		select  = keyboard_check_pressed(ord("J"));
		back    = keyboard_check_pressed(ord("K"));
	}
	
	else {
		if(gamepad_is_connected(num)) {
			left    = gamepad_button_check_pressed(num, gp_padl);
			right   = gamepad_button_check_pressed(num, gp_padr);
			up      = gamepad_button_check_pressed(num, gp_padu);
			down    = gamepad_button_check_pressed(num, gp_padd);
			select  = gamepad_button_check_pressed(num, gp_face1);
			back    = gamepad_button_check_pressed(num, gp_face2);
		}
	}
}

#region Helper functions

function check_vertical() {
	return vertical > 0 ? "D" : "U";
}

function check_horizontal() {
	// If the input direction equals facing, they are moving forward
	return sign(horizontal) == facing ? "F" : "B";
}


/// @function parse_moveset(move_list, len)
/// @description Checks a move passed in moveset for any inputs
/// @param {ds_map} move_list The moveset to check against
/// @param {int} How far to check down the input chain

function parse_moveset(move_list, len) {
	var command = "";
	for(var i = 0; i < len; i++) {
		for(var j = i; j >= 0; j--) {
			command += input_chain[len - j - 1];
			command += " ";
		}
		if(!is_undefined(move_list[? command])) {
			move_list[? command]();
			return true;
		}
		command = "";
	}
	return false;
}

#endregion
