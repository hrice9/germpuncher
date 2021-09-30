/// @description Insert description here
// You can write your code in this editor

if(other != owner) {
	other.hitpoints -= damage;
	
	with(other) {
		if(hitpoints <= 0) {
			instance_change(defeated_obj, true);
		}
	}
	
	instance_destroy(self);
}