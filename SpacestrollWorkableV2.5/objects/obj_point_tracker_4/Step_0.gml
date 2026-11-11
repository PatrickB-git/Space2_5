if global._player_turn == true {
	global._inaction_points = 0;
	global._action_points = 0;
	global._inaction_points = ((global._player_actions_max - global._player_actions_taken) * (3 + global._inaction_bonus));
	if global._upgrade_1_level >= 3 {
		global._action_points = global._player_actions_taken;
	}
}

if global._end_turn == true {
	var inact = global._inaction_points;
	var act = global._action_points;
	for(var i = 0; i < inact; i++) {
		
		global._inaction_points -= 1;
		global._total_points += 1;
	}
	
	for(var i = 0; i < act; i++) {
		global._action_points -= 1;
		global._total_points += 1;
	}
}