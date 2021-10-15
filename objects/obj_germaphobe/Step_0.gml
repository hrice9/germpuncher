
// Inherit the parent event
event_inherited();

/*
if(block_frames <= 0) {
	if(!down) {
		if(sign(velocity_x) == facing) {
			sprite_index = spr_germaphobeWalkForward;
		} else if(sign(velocity_x) == -facing) {
			sprite_index = spr_germaphobeWalkBackward;
		} else {
			sprite_index = spr_germaphobeIdle;
		}
	} else {
		sprite_index = spr_germaphobeCrouch;
	}
} else {
	sprite_index = spr_germaphobeBlockHold;
	horizontal = 0;
}
*/



// player is not attacking
if(!attacking && block_frames <= 0 && hit_stun_count <= 0) {
	// update animations based on movement
	if(!down) {
		if(sign(velocity_x) == facing) {
			sprite_index = spr_germaphobeWalkForward;
		} else if(sign(velocity_x) == -facing) {
			sprite_index = spr_germaphobeWalkBackward;
		} else {
			sprite_index = spr_germaphobeIdle;
		}
	} else {
		sprite_index = spr_germaphobeCrouch;
	}
} else if(block_frames > 0) {
	sprite_index = spr_germaphobeBlockHold;
}
// player is on the ground
// player is not hit stun
// player is not blocking
