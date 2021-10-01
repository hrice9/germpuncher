/// @description Insert description here
// You can write your code in this editor

// Set global variables
global.time_scale = 1;
global.grav = 2;

elems = layer_get_all_elements(layer);
for(var i = 0; i < array_length(elems); i++) {
	show_debug_message(elems[i]);
	show_debug_message(instance_id_get(elems[i]));
}