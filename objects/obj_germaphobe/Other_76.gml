
// Inherit the parent event
event_inherited();
/*
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
			// show_debug_message("bye");
			show_debug_message("Salutations my dear frieds");
			break;
		
		case "OnAnimationEnd":
			// Release the player movement
			attacking = false;
			if(grounded) {
				sprite_index = spr_germaphobeBlock;
			}
			show_debug_message("hello");
			break;
			
	}
});

//show_debug_message(event_data[? "element_id"]);

//show_debug_message(id);
*/