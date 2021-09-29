/// @description Insert description here
// You can write your code in this editor

if(other != owner) {
	other.hitpoints -= damage;
	instance_destroy(self);
}