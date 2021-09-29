// Command Format: string of inputs followed by a space
// EX: "D DF FP " -> Quarter circle forward + punch
// Callback: Anonymous function to be executed
function add_neutral_input(command, callback) {
	var len = string_length(command);
	if(string_char_at(command, len) != " ") {
		command += " "
	}
	ds_map_add(neutral_inputs, command, callback);
}

function add_command_input(command, callback) {
	var len = string_length(command);
	if(string_char_at(command, len) != " ") {
		command += " "
	}
	ds_map_add(command_inputs, command, callback);
}

function add_special_input(command, callback) {
	var len = string_length(command);
	if(string_char_at(command, len) != " ") {
		command += " "
	}
	ds_map_add(special_inputs, command, callback);
}