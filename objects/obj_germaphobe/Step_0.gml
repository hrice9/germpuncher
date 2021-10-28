
// Inherit the parent event
event_inherited();


// player is not attacking
if(!attacking && block_frames <= 0 && hit_stun_count <= 0) {
	// update animations based on movement
	if(dash) {
		//sprite_index = spr_germaphobeDash;
	}
	else if(grounded) {
		if(!down) {
			if(sign(velocity_x) == facing) {
				sprite_index = spr_germaphobeWalkForward;
			} else if(sign(velocity_x) == -facing) {
				sprite_index = spr_germaphobeWalkBackward;
			} else {
				sprite_index = spr_germaphobeIdle;
			}
		} else {
			if(sprite_index != spr_germaphobeCrouch) {
				sprite_index = spr_germaphobeCrouchAnimation;
			}
		}
	} else {
		sprite_index = spr_germaphobeJump;
	}
} else if(block_frames > 0) {
	if(sprite_index != spr_germaphobeBlockHold) {
		sprite_index = spr_germaphobeBlock;
	}
	sprite_index = spr_germaphobeBlockHold;
} else if(hit_stun_count > 0) {
	sprite_index = spr_germaphobeHit;
}
// player is on the ground
// player is not hit stun
// player is not blocking


if(spray) {
	spray_timer -= global.time_scale;
	if(spray_timer <= 0) {
		var obj = instance_create_layer(x + 128 * facing, y - 256, layer, obj_tempProjectile);
		obj.owner = self;
		obj.facing = facing;
		spray = false;
		audio_play_sound(snd_spray, 10, false);
		//attacking = false;
	}
}