// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit(){
	other.hitpoints -= damage;
	other.hit_stun_count = hit_strength;
	instance_create_depth((x + other.x) / 2, spawn_y, -10, obj_hitEffect);
	audio_play_sound(snd_tempPunch, 10, false);
	set_time_scale(0, pause_frames);
	set_camera_shake(screen_shake_intensity, screen_shake_duration);
	
	other.velocity_x = knockback_x * facing;
	other.velocity_y = knockback_y - 2;
}