/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

add_neutral_input("BP", function() {
	var obj = instance_create_layer(x, y - 128, layer, obj_tempProjectile);
	obj.owner = self;
	obj.facing = facing;
});