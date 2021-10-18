/// @description Insert description here
// You can write your code in this editor

switch(sprite_index) {
	case spr_germaphobePunch:
		attacking = false;
		image_index = 0;
		
	case spr_germaphobeBlock:
		if(block_frames > 0) {
			sprite_index = spr_germaphobeBlockHold;
		}
		
	case spr_germaphobeCrouchAnimation:
		image_index = 0;
		sprite_index = spr_germaphobeCrouch;
		
	case spr_germaphobeSpray:
		attacking = false;
}