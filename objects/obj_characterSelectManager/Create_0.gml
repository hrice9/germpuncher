/// @description Insert description here
// You can write your code in this editor


display_p1 = instance_create_layer( 350, room_height - 250, layer, obj_displayCharacter);
display_p2 = instance_create_layer( room_width - 350, room_height - 250, layer, obj_displayCharacter);
display_p2.facing = -1;

buttons = [];
// get the instances
for(var i = 0; i < instance_count; i++) {
	var button = instance_find(obj_button, i);
	if(button != noone) {
		array_push(buttons, button);
	}
}

selected_p1 = 0;
selected_p2 = 0;

locked_in_p1 = false;
locked_in_p2 = false;
ready = false;

characters = [obj_germaphobe, obj_virus];
displays = [spr_germaphobeIdle, spr_virusIdle];

buttons_len = array_length(buttons);