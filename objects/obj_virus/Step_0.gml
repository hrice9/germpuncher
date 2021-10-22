
// Inherit the parent event
event_inherited();


// player is not attacking
if(!attacking && block_frames <= 0 && hit_stun_count <= 0) {
	// update animations based on movement
	if(!down) {
		if(sign(velocity_x) == facing) {
			sprite_index = spr_germaphobeWalkForward;
		} else if(sign(velocity_x) == -facing) {
			sprite_index = spr_germaphobeWalkBackward;
		} else {
			sprite_index = spr_virusIdle;
		}
	} else {
		if(sprite_index != spr_virusCrouchHold) {
			sprite_index = spr_virusCrouch;
		}
	}
} else if(block_frames > 0) {
	sprite_index = spr_virusBlock;
} else if(hit_stun_count > 0) {
	sprite_index = spr_virusHit;
}
// player is on the ground
// player is not hit stun
// player is not blocking


if(spray) {
	spray_timer -= global.time_scale;
	if(spray_timer <= 0) {
		var obj = instance_create_layer(x, y - 300, layer, obj_tempProjectile);
		obj.owner = self;
		obj.facing = facing;
		spray = false;
		//attacking = false;
	}
}