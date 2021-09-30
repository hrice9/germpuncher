/// @description 

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
var offset = down ? 128 : 256;
draw_text(x, y - offset - 15, hitpoints);