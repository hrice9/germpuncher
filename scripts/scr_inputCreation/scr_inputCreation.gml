/// @function					add_neutral_input(command, callback)
/// @description				Create a low priority input
/// @param {string} command		The input string to perform the command
/// @param {func} callback		The function to be executed when the player performs the input string

function add_neutral_input(command, callback) {
	var len = string_length(command);
	if(string_char_at(command, len) != " ") {
		command += " "
	}
	ds_map_add(neutral_inputs, command, callback);
}


/// @function					add_command_input(command, callback)
/// @description				Create a medium priority input
/// @param {string} command		The input string to perform the command
/// @param {func} callback		The function to be executed when the player performs the input string

function add_command_input(command, callback) {
	var len = string_length(command);
	if(string_char_at(command, len) != " ") {
		command += " "
	}
	ds_map_add(command_inputs, command, callback);
}


/// @function					add_special_input(command, callback)
/// @description				Create a high priority input
/// @param {string} command		The input string to perform the command
/// @param {func} callback		The function to be executed when the player performs the input string

function add_special_input(command, callback) {
	var len = string_length(command);
	if(string_char_at(command, len) != " ") {
		command += " "
	}
	ds_map_add(special_inputs, command, callback);
}