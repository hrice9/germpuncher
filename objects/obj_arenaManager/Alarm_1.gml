if(obj_gameManager.player1_match_score >= 2 || obj_gameManager.player2_match_score >= 2) {
	room_goto(rm_victoryScreen);
} else {
	room_restart();
}