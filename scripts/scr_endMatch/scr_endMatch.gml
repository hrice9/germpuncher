// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_match(){
	if(obj_arenaManager.p1 == id) {
		// player2 wins
		// add 1 to player 2's score
		obj_gameManager.player2_match_score ++;
		obj_arenaManager.p2_score ++;
		if(obj_gameManager.player2_match_score >= 2) {
			obj_gameManager.game_winner = "Player 2";
			//room_goto(rm_victoryScreen);
			show_debug_message(string(self) + " " + string(obj_arenaManager.p1));
		}
	} else {
		// player1 wins
		// add 1 to player 1's score
		obj_gameManager.player1_match_score ++;
		obj_arenaManager.p1_score ++;
		show_debug_message(string(id) + " " + string(obj_arenaManager.p1));
		if(obj_gameManager.player1_match_score >= 2) {
			obj_gameManager.game_winner = "Player 1";
			//room_goto(rm_victoryScreen);
		}
	}
	
	//room_restart();
	obj_arenaManager.alarm[1] = 120;
}