/// @description Collision with the player

spawn_y = other.y;

if(hitType.high) spawn_y = other.y - random_range(-10, 10) - other.sprite_height;
if(hitType.mid) spawn_y = other.y - random_range(-10, 10) - other.sprite_height/2;

//show_debug_message(spawn_y);
// Create a custom event for the player to take damage/block
if(other != owner) {
	if(!other.blocking) {
		hit();
		
	} else {
		if(other.crouch_block) {
			if(hitbox_type == hitType.high) {
				hit();
			}
		} else {
			if(hitbox_type == hitType.low) {
				hit();
			} else {
				instance_create_depth((x + other.x) / 2, y, -10, obj_guardEffect);
				audio_play_sound(snd_tempGuard, 10, false);
				other.block_frames = hit_strength/2; // Change this to block frames
				// set owner lag frames to some amount
			}
		}
		
	}
	
	with(other) {
		if(hitpoints <= 0) {
			//instance_change(defeated_obj, true);
			instance_destroy(self);
			set_time_scale(.1, 60);
		}
	}
	
	if(destroy_on_collision) {
		instance_destroy(self);
	}
}