/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if(grounded && down) {
	sprite_index = spr_tempPlayerCrouch;
} else {
	sprite_index = spr_tempPlayer;
}