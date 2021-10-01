/// @description Collision with the player

// Create a custom event for the player to take damage/block
if(other != owner) {
	if(!other.blocking) {
		other.hitpoints -= damage;
		other.hit_stun_count = hit_strength;
		
	} else {
		if(other.crouch_block) {
			if(hitbox_type == hitType.high) {
				other.hitpoints -= damage;
				other.hit_stun_count = hit_strength;
			}
		} else {
			if(hitbox_type == hitType.low) {
				other.hitpoints -= damage;
				other.hit_stun_count = hit_strength;
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