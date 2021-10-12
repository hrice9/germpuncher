// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_shadow(shadow_size){
	shadow_size *= (y / global.ground_height);
	var half_shadow_size = shadow_size / 2;

	// GPU blending
	gpu_set_blendenable(true);
	gpu_set_blendmode_ext(bm_dest_color, bm_zero); // Multiply blendmode (don't ask me why there isn't a bm_multiply)
	draw_ellipse_color(
		x - half_shadow_size,
		global.ground_height - (half_shadow_size * .25),
		x + half_shadow_size,
		global.ground_height + (half_shadow_size * .25),
		c_gray, c_white, false
	);
	gpu_set_blendmode(bm_normal); // Reset the blendmode

}