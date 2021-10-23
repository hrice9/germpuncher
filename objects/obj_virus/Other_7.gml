/// @description Insert description here
// You can write your code in this editor

switch(sprite_index) {
	case spr_virusPunch:
		attacking = false;
		image_index = 0;
		
	case spr_virusBlock:
		if(block_frames > 0) {
			sprite_index = spr_virusBlockHold;
		}
		
	case spr_virusCrouch:
		image_index = 0;
		sprite_index = spr_virusCrouchHold;
		
	case spr_virusDash:
		dash = false;
}