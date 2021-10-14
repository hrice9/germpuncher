/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
if(obj_gameManager.game_winner != "Draw"){
	draw_text(room_width/2, room_height/2, obj_gameManager.game_winner + " Wins!");
} else {
	draw_text(room_width/2, room_height/2, "Draw");
}