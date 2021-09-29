/// @description
input_chain = [];

special_inputs = ds_map_create();
command_inputs = ds_map_create();
neutral_inputs = ds_map_create();

/*
add_command_input("F F", function() {
	show_debug_message("Dash");
});
*/

prev_horizontal = 0;
prev_vertical   = 0;

velocity_x = 0;
velocity_y = 0;

facing = 1;

enum fighterAlarms {
	attackAlarm,
	stun,
	invincibility,
	attackCooldown,
	input,
	inputTimeout
}
