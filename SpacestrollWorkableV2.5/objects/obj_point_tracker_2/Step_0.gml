if global._end_turn == true {
	var dest = global._destroy_points;
	for(var i = 0; i < dest; i++) {
		global._destroy_points -= 1;
		global._total_points += 1;
	}
}
