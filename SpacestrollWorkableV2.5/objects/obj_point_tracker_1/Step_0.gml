if global._end_turn == true {
	var scor = global._score_points;
	for(var i = 0; i < scor; i++) {
		global._score_points -= 1;
		global._total_points += 1;
	}
}