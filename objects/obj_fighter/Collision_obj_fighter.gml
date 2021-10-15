/// @description Insert description here
// You can write your code in this editor

if(grounded && other.grounded) {
	var dir = x - other.x;
	x += sign(dir) * 3;
}