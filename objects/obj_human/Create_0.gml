/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

add_command_input("F F", function() {
	//x += 50 * facing;
	dash = true;
	gravity_scale = 0;
	velocity_y = 0;
	alarm[fighterAlarms.dash] = 7;
});

// Variations on the same input command to increase consistency, the numbers just deonote which input version the player performed
add_special_input("D DF FP", function() {
	show_debug_message("Fire Projectile 1");
	var obj = instance_create_layer(x + 64 * facing, y - 128, layer, obj_projectile);
	obj.owner = self;
	obj.x_speed *= facing;
	obj.sprite_index = spr_tempHitbox;
});
add_special_input("D DF F FP", function() {
	show_debug_message("Fire Projectile 2");
	var obj = instance_create_layer(x + 64 * facing, y - 128, layer, obj_projectile);
	obj.owner = self;
	obj.x_speed *= facing;
	obj.sprite_index = spr_tempHitbox;
});
add_special_input("D DF F P", function() {
	show_debug_message("Fire Projectile 3");
});
