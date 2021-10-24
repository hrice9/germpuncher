/// @description Insert description here
// You can write your code in this editor

switch(sprite_index) {
	case spr_germaphobePunch:
		attacking = false;
		image_index = 0;
		break;
		
	case spr_germaphobeBlock:
		if(block_frames > 0) {
			sprite_index = spr_germaphobeBlockHold;
		}
		break;
		
	case spr_germaphobeCrouchAnimation:
		image_index = 0;
		sprite_index = spr_germaphobeCrouch;
		break;
		
	case spr_germaphobeSpray:
		attacking = false;
		break;
	
	case spr_germaphobeKick:
		attacking = false;
		image_index = 0;
		break;
		
	case spr_germaphobeDash:
		dash = false;
		break;
		
	case spr_germaphobeDownLight:
		attacking = false;
		image_index = 0;
		break;
}