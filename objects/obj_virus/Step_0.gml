
// Inherit the parent event
event_inherited();


// player is not attacking
if(!attacking && block_frames <= 0 && hit_stun_count <= 0) {
	// update animations based on movement
	if(dash) {
		sprite_index = spr_virusDash;
	}else if(grounded) {
		if(!down) {
			if(sign(velocity_x) == facing) {
				sprite_index = spr_virusWalkForward;
			} else if(sign(velocity_x) == -facing) {
				sprite_index = spr_virusWalkBackward;
			} else {
				sprite_index = spr_virusIdle;
			}
		} else {
			if(sprite_index != spr_virusCrouchHold) {
				sprite_index = spr_virusCrouch;
			}
		}
	} else {
		sprite_index = spr_virusJump;
	}
} else if(block_frames > 0 && sprite_index != spr_virusBlockHold) {
	sprite_index = spr_virusBlock;
} else if(hit_stun_count > 0) {
	sprite_index = spr_virusHit;
}

if(attacking && grounded && spec) {
	sprite_index = spr_virusSpecialLand;
	if(special_hitbox != noone) {
		instance_destroy(special_hitbox);
		special_hitbox = noone;
	}
	special = false;
	/*
	var obj = instance_create_layer(x, y, layer, obj_virusSpecialLandHitbox);
	obj.owner = self;
	obj.facing = self;
	*/
}
// player is on the ground
// player is not hit stun
// player is not blocking


if(slam) {
	jump_frames -= global.time_scale;
	if(jump_frames <= 0) {
		velocity_y = 0;
		sprite_index = spr_virusSpecial;
		image_index = 0;
		spec = true;
		attacking = true;
		gravity_scale = 2.5;
		// create the hitbox
		special_hitbox = instance_create_layer(x, y, layer, obj_virusSpecialHitbox);
		special_hitbox.owner = self;
		special_hitbox.facing = facing;
		slam = false;
	}
}