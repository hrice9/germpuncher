/// @description Insert description here
// You can write your code in this editor

/*
var input_string = "";
for(var i = 0; i < array_length(input_chain); i++) {
	input_string += input_chain[i];
	input_string += " ";
}

draw_text(x, y, input_string);
*/

draw_shadow(512);

draw_self();

if(global.show_hitboxes) {
	draw_rectangle(bbox_right, bbox_bottom, bbox_left, bbox_top, true);
}