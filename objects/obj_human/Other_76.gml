/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

handle_broadcast("sprite event", function() {
	switch(event_message) {
		case "OnFireProjectile":
			// Create the projectile
			var obj = instance_create_layer(x + 64 * facing, y - 155, layer, obj_tempProjectile);
			obj.owner = self;
			obj.facing = facing;
			break;
			
		case "OnAttackBegin":
			// Disable player movement
			show_debug_message("bye");
			break;
		
		case "OnAnimationEnd":
			// Release the player movement
			attacking = false;
			show_debug_message("hello");
			break;
	}
});