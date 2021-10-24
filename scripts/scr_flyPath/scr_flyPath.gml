// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_fly_path(fly){
	var num = irandom_range(0, 2);
	
	with(fly) {
		path_start(paths[num], random_range(10, 15), path_action_continue, false);
	}
}