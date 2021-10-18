/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spray_timer = 0;
spray = 0;
/*
add_neutral_input("BP", function() {
	spray_timer = 15;
	spray = true;
	attacking = true;
	sprite_index = spr_germaphobeSpray;
});
*/

add_neutral_input("P", function() {
	attacking = true;
	sprite_index = spr_germaphobePunch;
	image_index  = 0;
	var obj = instance_create_layer(x, y, layer, obj_germaphobePunchHitbox);
	obj.owner = self;
	obj.facing = facing;
});


add_command_input("D DB BP", function() {
	spray_timer = 15;
	spray = true;
	attacking = true;
	sprite_index = spr_germaphobeSpray;
	image_index = 0;
});

add_command_input("D DB B BP", function() {
	spray_timer = 15;
	spray = true;
	attacking = true;
	sprite_index = spr_germaphobeSpray;
	image_index = 0;
});