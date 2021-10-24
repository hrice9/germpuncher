/// @description Insert description here
// You can write your code in this editor

// set the arena type here randomly
var rand_num = random(1);

if(rand_num < .5) {
	obj_gameManager.arena = arenaType.store;
} else {
	obj_gameManager.arena = arenaType.apartment;
}
