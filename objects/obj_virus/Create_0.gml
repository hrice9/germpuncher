/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spray_timer = 0;
spray = 0;

add_neutral_input("P", function() {
	attacking = true;
	sprite_index = spr_virusPunch;
	image_index  = 0;
	var obj = instance_create_layer(x, y, layer, obj_virusPunchHitbox);
	obj.owner = self;
	obj.facing = facing;
});

add_command_input("F F", function() {
	sprite_index = spr_virusDash;
	image_index = 0;
	grounded_dash = grounded;
	dash = true;
});