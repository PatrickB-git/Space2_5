if global._player_turn == true {
	global._inactive_points = 0;
	
	if global._pilot_1_active == false and global._pilot_1_ready == true {
		global._inactive_points += 1 + global._inactive_bonus;
	}
	if global._pilot_2_active == false and global._pilot_2_ready == true {
		global._inactive_points += 1 + global._inactive_bonus;
	}
	if global._pilot_3_active == false and global._pilot_3_ready == true {
		global._inactive_points += 1 + global._inactive_bonus;
	}
	if global._pilot_4_active == false and global._pilot_4_ready == true {
		global._inactive_points += 1 + global._inactive_bonus;
	}
	if global._elite_1_active == false and global._elite_1_alive == true {
		global._inactive_points += 2;
	}
	if global._elite_2_active == false and global._elite_2_alive == true {
		global._inactive_points += 2;
	}
	if global._elite_3_active == false and global._elite_3_alive == true {
		global._inactive_points += 2;
	}
}

if global._end_turn == true {
	var inact = global._inactive_points;
	for(var i = 0; i < inact; i++) {
		global._inactive_points -= 1;
		global._total_points += 1;
	}
}
