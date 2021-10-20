/// @description Insert description here
// You can write your code in this editor

// Get all of the connected input devices
p1_device = -2;
p2_device = -2;

//num_devices = 1 + gamepad_get_device_count();
// Create the number of required devices
tokens = [];
var obj = instance_create_layer(room_width/2, 150, layer, obj_playerToken);
obj.target_x = obj.x;
obj.target_y = obj.y;
obj.start_y  = obj.y;
obj.device = -1;
array_push(tokens, obj);
for(var i = 0; i < 16; i++) {
	if(gamepad_is_connected(i)) {
		obj = instance_create_layer(room_width/2, 150 + (135 * array_length(tokens)), layer, obj_playerToken);
		obj.target_x = obj.x;
		obj.target_y = obj.y;
		obj.device = i;
		array_push(tokens, obj);
	}
}

ready_to_play = false;