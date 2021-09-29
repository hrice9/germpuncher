/// @description Initialize Variables

// NOTE: This object is purely for testing and has no use in the final game

// D = down
// F = forward
// B = back
// K = kick
// P = punch
// DF = down + forward
input_chain = [];

prev_horizontal = 0;
prev_vertical = 0;

neutral_inputs = ds_map_create();
command_inputs = ds_map_create();
special_inputs = ds_map_create();


// Define command attacks
// replace these strings with functions
ds_map_add(command_inputs, "FP ", function() {
	show_debug_message("Forward punch!");
});
ds_map_add(command_inputs, "F F ", function() {
	show_debug_message("Dash forward? Good choice, good choice");
});
ds_map_add(command_inputs, "B B ", function() {
	show_debug_message("Oh wow! Nice dash back! Too bad I fucked your mom");
});
ds_map_add(special_inputs, "D DF F ", function() {
	show_debug_message("Hello Gamer!")
	input_chain = [];
}); // Needs to be an anonymous function

// Priority:
// Specials -> commands -> singles