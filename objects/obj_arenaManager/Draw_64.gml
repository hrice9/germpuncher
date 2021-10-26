
// draw the time remaining
draw_set_halign(fa_center);
draw_set_font(fnt_fightingGameTimer);
draw_text(room_width/2, 50, ceil(time_remaining / 60));
draw_set_font(fnt_menuItem);


var p1_bar_init_x = room_width/2 - 50;
var p2_bar_init_x = room_width/2 + 50;

// Draw the background
draw_sprite(spr_uiHealthBarBackground1, 0, p1_bar_init_x, 100);

if(instance_exists(p1)) {
	// Draw the health bar part
	var width = sprite_get_width(spr_uiHealthBarFill1)
	var height = sprite_get_height(spr_uiHealthBarFill1)
	draw_sprite_part(spr_uiHealthBarFill1, 0,
	0,
	0,
	width * (p1.hitpoints/p1.max_hitpoitns),
	height,
	p1_bar_init_x - width,
	100 - height/2);
	
}

for(var i = 0; i < num_wins_required; i++) {
	var offset = sprite_get_width(spr_uiHealthBarOutline1) - 835;
	if(i + 1 <= p1_score) {
		draw_sprite(spr_uiRoundBubble, 0, p1_bar_init_x - offset - (50 * i), 133);
	} else {
		draw_sprite(spr_uiRoundBubbleBackground, 0, p1_bar_init_x - offset - (50 * i), 133);
	}
}
draw_sprite(spr_uiHealthBarOutline1, 0, p1_bar_init_x, 100);




draw_sprite(spr_uiHealthBarBackground2, 0, p2_bar_init_x, 100);
if(instance_exists(p2)) {
	var width = sprite_get_width(spr_uiHealthBarFill2);
	var height = sprite_get_height(spr_uiHealthBarFill2);
	
	draw_sprite_part(spr_uiHealthBarFill2, 0,
	width - (width * (p2.hitpoints/p2.max_hitpoitns)),
	0,
	width * (p2.hitpoints/p2.max_hitpoitns),
	height,
	p2_bar_init_x + width - (width * (p2.hitpoints/p2.max_hitpoitns)),
	100 - height/2);
}


for(var i = 0; i < num_wins_required; i++) {
	var offset = sprite_get_width(spr_uiHealthBarOutline1) - 835;
	if(i + 1 <= p2_score) {
		draw_sprite(spr_uiRoundBubble, 0, p2_bar_init_x + offset + (50 * i), 133);
	} else {
		draw_sprite(spr_uiRoundBubbleBackground, 0, p2_bar_init_x + offset + (50 * i), 133);
	}
}

draw_sprite(spr_uiHealthBarOutline2, 0, p2_bar_init_x, 100);