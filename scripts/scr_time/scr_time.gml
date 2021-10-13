
function set_time_scale(time_scale, duration){
	if(instance_exists(obj_gameManager)) {
		global.time_scale = time_scale;
		with(obj_gameManager) {
			// set the alarm to reset the time scale
			alarm[0] = duration;
		}
	}
	return;
}

function reset_time_scale() {
	global.time_scale = 1.0;
	if(instance_exists(obj_gameManager)) {
		with(obj_gameManager) {
			alarm[0] = 0;
		}
	}
}