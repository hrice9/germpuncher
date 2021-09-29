/// @description 

// Detect input pressed or input released
// When a key is pressed or released, check what keys are pressed and update the input_chain


// when an input changes, update the string
get_inputs(-1);
horizontal = right - left;
vertical = down - up;

var value = "";
if(prev_horizontal != horizontal || prev_vertical != vertical) {
	// add a directional input
	if(vertical != 0) {
		value += vertical > 0 ? "D" : "U";
	}
	
	if(horizontal != 0) {
		value += horizontal > 0 ? "F" : "B";
	}
}

if(punch) {
	if(vertical != 0) {
		value += vertical > 0 ? "D" : "U";
	}
	
	if(horizontal != 0) {
		value += horizontal > 0 ? "F" : "B";
	}
	value += "P";
}

if(kick) {
	if(vertical != 0) {
		value += vertical > 0 ? "D" : "U";
	}
	
	if(horizontal != 0) {
		value += horizontal > 0 ? "F" : "B";
	}
	value += "K";
}

if(value != "") {
	array_push(input_chain, value);
	// set an alarm for 15 frames
	alarm[0] = 15;
	
	
	while (!executed) {
		var command = "";
		var chain_len = array_length(input_chain);
	
		if(chain_len > 0) {
			// parse for special moves
			for(i = 0; i < chain_len; i++) {
				for(j = i; j >= 0; j--) {
					//array_push(command, input_chain[chain_len - 1 - j]);
					//show_debug_message(chain_len - 1 - j);
				
					command += input_chain[chain_len - 1 - j];
					command += " ";
				}
				if(!is_undefined(special_inputs[? command])) {
					//show_debug_message(special_inputs[? command]);
					special_inputs[? command]();
				}
				command = "";
			}
			
			// parse for command moves
			for(i = 0; i < chain_len; i++) {
				for(j = i; j >= 0; j--) {
					//array_push(command, input_chain[chain_len - 1 - j]);
					//show_debug_message(chain_len - 1 - j);
				
					command += input_chain[chain_len - 1 - j];
					command += " ";
				}
				if(!is_undefined(command_inputs[? command])) {
					//show_debug_message(special_inputs[? command]);
					command_inputs[? command]();
				}
				command = "";
			}
			// parse for single moves
			for(i = 0; i < chain_len; i++) {
				for(j = i; j >= 0; j--) {
					//array_push(command, input_chain[chain_len - 1 - j]);
					//show_debug_message(chain_len - 1 - j);
				
					command += input_chain[chain_len - 1 - j];
					command += " ";
				}
				if(!is_undefined(neutral_inputs[? command])) {
					//show_debug_message(special_inputs[? command]);
					neutral_inputs[? command]();
				}
				command = "";
			}
			// if nothing has been executed, continue
		}
		break;
	}
}
prev_horizontal = horizontal;
prev_vertical = vertical;