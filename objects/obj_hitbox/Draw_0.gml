/// @description Insert description here
// You can write your code in this editor

if(global.show_hitboxes) {
	gpu_set_blendmode_ext(bm_dest_color, bm_zero);
	draw_rectangle_color(bbox_right, bbox_bottom, bbox_left, bbox_top, c_red, c_red, c_red, c_red, false);
	gpu_set_blendmode(bm_normal);
	draw_rectangle_color(bbox_right, bbox_bottom, bbox_left, bbox_top, c_red, c_red, c_red, c_red, true);
}