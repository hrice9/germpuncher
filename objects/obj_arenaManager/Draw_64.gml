
// draw the time remaining
draw_set_halign(fa_center);
draw_set_font(fnt_fightingGameTimer);
draw_text(room_width/2, 50, ceil(time_remaining / 60));
draw_set_font(fnt_menuItem);

// draw healthbars
var bar_length = room_width/2 - 105;

var p1_bar_init_x = room_width/2 - 50;
var p2_bar_init_x = room_width/2 + 50;

if(instance_exists(p1)) {
	draw_rectangle_color(p1_bar_init_x, 50, p1_bar_init_x - bar_length * (p1.hitpoints/p1.max_hitpoitns), 100, c_red, c_red, c_red, c_red, false);
}
for(var i = 0; i < num_wins_required; i++) {
	if(i + 1 <= p1_score) {
		// draw a box of width 25 with 10 px padding
		draw_rectangle_color(room_width/2 - 55 - (35 * i), 105, room_width/2 - 80 - (35 * i), 130, c_yellow, c_yellow, c_yellow, c_yellow, false);
	} else {
		//draw_rectangle_color(room_width/2 - 55 - (35 * i), 105, room_width/2 - 55 - (60 * i), 130, c_gray, c_gray, c_gray, c_gray, false);
		draw_rectangle_color(room_width/2 - 55 - (35 * i), 105, room_width/2 - 80 - (35 * i), 130, c_gray, c_gray, c_gray, c_gray, false);
	}
}

if(instance_exists(p2)) {
	draw_rectangle_color(p2_bar_init_x, 50, p2_bar_init_x + bar_length * (p2.hitpoints/p2.max_hitpoitns), 100, c_red, c_red, c_red, c_red, false);
}
for(var i = 0; i < num_wins_required; i++) {
	if(i + 1 <= p2_score) {
		// draw a box of width 25 with 10 px padding
		draw_rectangle_color(room_width/2 + 55 + (35 * i), 105, room_width/2 + 80 + (35 * i), 130, c_yellow, c_yellow, c_yellow, c_yellow, false);
	} else {
		//draw_rectangle_color(room_width/2 - 55 - (35 * i), 105, room_width/2 - 55 - (60 * i), 130, c_gray, c_gray, c_gray, c_gray, false);
		draw_rectangle_color(room_width/2 + 55 + (35 * i), 105, room_width/2 + 80 + (35 * i), 130, c_gray, c_gray, c_gray, c_gray, false);
	}
}