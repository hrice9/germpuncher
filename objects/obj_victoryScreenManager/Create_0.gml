/// @description Insert description here
// You can write your code in this editor

audio_stop_all();
audio_play_sound(snd_victory, 10, false);

alarm[0] = 5 * 60;
obj_gameManager.player1_match_score = 0;
obj_gameManager.player2_match_score = 0;

var layer_id = layer_get_id("Background");
var back_id = layer_background_get_id(layer_id);

draw_textx = 0;
draw_texty = 0;

var winner = obj_gameManager.game_winner == "Player 1" ? 1 : 2;

if(winner == 1) {
	
	if(obj_gameManager.player1 == obj_germaphobe) {
		layer_background_change(back_id, spr_germaphobeWin);
		draw_textx = 415;
		draw_texty = 520;
	} else if(obj_gameManager.player1 == obj_virus) {
		layer_background_change(back_id, spr_virusWin);
		draw_textx = 390;
		draw_texty = 530;
	}
} else {
	if(obj_gameManager.player2 == obj_germaphobe) {
		layer_background_change(back_id, spr_germaphobeWin);
		draw_textx = 415;
		draw_texty = 520;
	} else if(obj_gameManager.player2 == obj_virus) {
		layer_background_change(back_id, spr_virusWin);
		draw_textx = 390;
		draw_texty = 530;
	}
}

show_debug_message(obj_gameManager.game_winner)