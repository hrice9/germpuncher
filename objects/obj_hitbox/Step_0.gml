
image_speed = global.time_scale;
image_xscale = facing;

if(owner.block_frames > 0 || owner.hit_stun_count > 0) {
	instance_destroy(self);
}