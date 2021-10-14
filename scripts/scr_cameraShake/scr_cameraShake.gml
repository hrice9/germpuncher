// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_camera_shake(intensity, duration){
	if(instance_exists(obj_gameManager)) {
		with(obj_gameManager) {
			target_shake_intensity = intensity;
			alarm[1] = duration;
		}
	}
}