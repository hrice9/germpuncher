/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(velocity_x > 0) {
	sprite_index = spr_germaphobeWalkForward;
} else if(velocity_x != 0) {
	sprite_index = spr_germaphobeWalkBackward;
} else {
	sprite_index = spr_germaphobeIdle;
}

// player is not attacking
// player is on the ground
// player is not hit stun
// player is not blocking