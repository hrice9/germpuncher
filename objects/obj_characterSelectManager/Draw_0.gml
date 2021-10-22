/// @description Insert description here
// You can write your code in this editor


draw_sprite(spr_uiSelectTokenP1, 0, buttons[selected_p1].x, buttons[selected_p1].y);
draw_sprite(spr_uiSelectTokenP2, 0, buttons[selected_p2].x, buttons[selected_p2].y);


if(locked_in_p1) {
	draw_set_font(fnt_fightingGameTimer);
	draw_set_halign(fa_center);
	draw_text(350, room_height/2 + 35, "READY");
}

if(locked_in_p2) {
	draw_set_font(fnt_fightingGameTimer);
	draw_set_halign(fa_center);
	draw_text(room_width - 350, room_height/2 + 35, "READY");
}