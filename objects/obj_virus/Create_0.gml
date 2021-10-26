/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

slam = false;

jump_frames = 0;

special_hitbox = noone;

add_neutral_input("P", function() {
	attacking = true;
	sprite_index = spr_virusPunch;
	image_index  = 0;
	var obj = instance_create_layer(x, y, layer, obj_virusPunchHitbox);
	obj.owner = self;
	obj.facing = facing;
});

add_neutral_input("K", function() {
	attacking = true;
	sprite_index = spr_virusKick;
	image_index = 0;
	var obj = instance_create_layer(x, y, layer, obj_virusKickHitbox);
	obj.owner = self;
	obj.facing = facing;
});

add_command_input("DP", function() {
	attacking = true;
	sprite_index = spr_virusDownLight;
	image_index = 0;
	var obj = instance_create_layer(x, y, layer, obj_virusLowAttackHitbox);
	obj.owner = self;
	obj.facing = facing;
});

add_command_input("F F", function() {
	sprite_index = spr_virusDash;
	image_index = 0;
	grounded_dash = grounded;
	dash = true;
});

add_special_input("D DF FP", function() {
	if(!grounded) {
		velocity_y = 0;
		sprite_index = spr_virusSpecial;
		image_index = 0;
		spec = true;
		attacking = true;
		gravity_scale = 2.5;
		special_hitbox = instance_create_layer(x, y, layer, obj_virusSpecialHitbox);
		special_hitbox.owner = self;
		special_hitbox.facing = facing;
	} else {
		velocity_y = jump_force;
		slam = true;
		jump_frames = 25;
	}
});

add_special_input("D DF F FP", function() {
	if(!grounded) {
		velocity_y = 0;
		sprite_index = spr_virusSpecial;
		image_index = 0;
		spec = true;
		attacking = true;
		gravity_scale = 2.5;
		special_hitbox = instance_create_layer(x, y, layer, obj_virusSpecialHitbox);
		special_hitbox.owner = self;
		special_hitbox.facing = facing;
	} else {
		velocity_y = jump_force;
		slam = true;
		jump_frames = 25;
	}
});

add_special_input("D DF F P", function() {
	if(!grounded) {
		velocity_y = 0;
		sprite_index = spr_virusSpecial;
		image_index = 0;
		spec = true;
		attacking = true;
		gravity_scale = 2.5;
		special_hitbox = instance_create_layer(x, y, layer, obj_virusSpecialHitbox);
		special_hitbox.owner = self;
		special_hitbox.facing = facing;
	} else {
		velocity_y = jump_force;
		slam = true;
		jump_frames = 25;
	}
});

add_special_input("S", function() {
	if(!grounded) {
		velocity_y = 0;
		sprite_index = spr_virusSpecial;
		image_index = 0;
		spec = true;
		attacking = true;
		gravity_scale = 2.5;
		special_hitbox = instance_create_layer(x, y, layer, obj_virusSpecialHitbox);
		special_hitbox.owner = self;
		special_hitbox.facing = facing;
	} else {
		velocity_y = jump_force;
		slam = true;
		jump_frames = 25;
	}
});