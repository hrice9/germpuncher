/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

add_neutral_input("BP", function() {
	var obj = instance_create_layer(x, y - 300, layer, obj_tempProjectile);
	obj.owner = self;
	obj.facing = facing;
});

add_neutral_input("P", function() {
	attacking = true;
	sprite_index = spr_germaphobePunch;
	var obj = instance_create_layer(x, y, layer, obj_germaphobePunchHitbox);
	obj.owner = self;
	obj.facing = facing;
});