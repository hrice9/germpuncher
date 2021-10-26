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
grounded = false;

facing = 1;
dash = false;
sprint = false;

blocking = false;
crouch_block = false;
invincible = false;
hit_stun_count = 0;
attacking = false;
grounded_dash = false;

lag_frames = 0;

spec = false;

enum fighterAlarms {
	inputTimeout,
	attackAlarm,
	stun,
	invincibility,
	attackCooldown,
	input,
	dash
}
