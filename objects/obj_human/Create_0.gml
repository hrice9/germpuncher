/// @description

// Inherit the parent event
event_inherited();

add_command_input("F F", function() {
	//x += 50 * facing;
	dash = true;
	gravity_scale = 0;
	velocity_y = 0;
	alarm[fighterAlarms.dash] = 15;
});

// Variations on the same input command to increase consistency, the numbers just deonote which input version the player performed
add_special_input("D DF FP", function() {
	/*
	show_debug_message("Fire Projectile 1");
	var obj = instance_create_layer(x + 64 * facing, y - 155, layer, obj_tempProjectile);
	obj.owner = self;
	obj.facing = facing;
	*/
	attacking = true;
	sprite_index = spr_tempPlayerFireProj;
	show_debug_message("Fire Projectile");
});
add_special_input("D DF F FP", function() {
	/*
	show_debug_message("Fire Projectile 2");
	var obj = instance_create_layer(x + 64 * facing, y - 155, layer, obj_tempProjectile);
	obj.owner = self;
	obj.facing = facing;
	*/
	attacking = true;
	sprite_index = spr_tempPlayerFireProj;
	show_debug_message("Fire Projectile");
});
add_special_input("D DF F P", function() {
	/*
	show_debug_message("Fire Projectile 3");
	var obj = instance_create_layer(x + 64 * facing, y - 155, layer, obj_tempProjectile);
	obj.owner = self;
	obj.facing = facing;
	*/
	sprite_index = spr_tempPlayerFireProj;
});
