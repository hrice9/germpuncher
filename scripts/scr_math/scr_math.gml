// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function linear_interpolate(val, target, step){
	
	var sample = (val * (1 - step) + target * step)/(1-0);
	
	//show_debug_message((val * step + target * step) / step);
	return sample;
}