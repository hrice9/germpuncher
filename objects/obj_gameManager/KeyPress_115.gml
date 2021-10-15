/// @description Insert description here
// You can write your code in this editor

// dump all the instances
var elems = layer_get_all_elements("Fighters");

for(var i = 0; i < array_length(elems); i++) {
	//show_debug_message(string(elems[i]) + " - " + string(instance_id_get(elems[i])));
	show_debug_message(string(instance_id_get(1)));
}