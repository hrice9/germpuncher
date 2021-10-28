/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("J"))) {
	room_goto(rm_controllerSelect);
}

for(var i = 0; i < gamepad_get_device_count(); i++) {
	get_ui_inputs(i);
	
	if(select) {
		room_goto(rm_controllerSelect);
	}
}