
draw_set_halign(fa_center);
draw_set_font(fnt_fightingGameTimer);
draw_text(room_width/2, 40, "select your controller");

if(ready_to_play) {
	draw_set_font(fnt_fightingGameTimer);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "READY");
	draw_set_font(fnt_menuItem);
}