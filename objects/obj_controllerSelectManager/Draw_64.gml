/// @description Insert description here
// You can write your code in this editor

// draw player tokens

// move this somewhere else
/*
for(var i = 0; i < num_devices; i++) {
	draw_sprite(spr_tempPlayerToken, 1, room_width/2, 100 + 150 * i);
	
}
*/

if(ready_to_play) {
	draw_set_font(fnt_fightingGameTimer);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "READY");
	draw_set_font(fnt_menuItem);
}