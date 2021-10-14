

if(count_time) {
	time_remaining --;
	if(time_remaining < 0) {
		//room_goto(rm_victoryScreen);
		set_time_scale(.1, 60);
		alarm[1] = 120;
	}
}