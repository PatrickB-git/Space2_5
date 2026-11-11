if global._enemy_score == 0 {
	global._victory = true;
	global._player_turn = false;
	global._credits += global._total_points;
}

if global._player_score == 0 {
	global._mission_lost = true;
}