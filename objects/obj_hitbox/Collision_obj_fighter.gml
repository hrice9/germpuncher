/// @description Collision with the player

// Create a custom event for the player to take damage/block
if(other != owner) {
	if(!other.blocking) {
		other.hitpoints -= damage;
		other.hit_stun_count = hit_strength;
		instance_create_depth((x + other.x) / 2, y, -10, obj_hitEffect);
		audio_play_sound(snd_tempPunch, 10, false);
		
	} else {
		if(other.crouch_block) {
			if(hitbox_type == hitType.high) {
				other.hitpoints -= damage;
				other.hit_stun_count = hit_strength;
				instance_create_depth((x + other.x) / 2, y, -10, obj_hitEffect);
				audio_play_sound(snd_tempPunch, 10, false);
			}
		} else {
			if(hitbox_type == hitType.low) {
				other.hitpoints -= damage;
				other.hit_stun_count = hit_strength;
				instance_create_depth((x + other.x) / 2, y, -10, obj_hitEffect);
				audio_play_sound(snd_tempPunch, 10, false);
			} else {
				instance_create_depth((x + other.x) / 2, y, -10, obj_guardEffect);
				audio_play_sound(snd_tempGuard, 10, false);
				other.block_frames += hit_strength/2; // Change this to block frames
				// set owner lag frames to some amount
			}
		}
		
	}
	
	with(other) {
		if(hitpoints <= 0) {
			instance_change(defeated_obj, true);
		}
	}
	
	if(destroy_on_collision) {
		instance_destroy(self);
	}
}