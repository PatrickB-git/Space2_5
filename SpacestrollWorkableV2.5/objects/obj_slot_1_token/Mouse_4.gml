if global._total_points >= _ship_cost and global._player_fleet_size > global._active_player_ships {
	global._spawning = _this_ship;
	global._ship_selected = obj_slot_1_token;
	depth = 0;
	if global._pilot_selected != obj_player_ship_spawn and _micros == false {
		global._placing_ship = true;
		alarm_set(1, 2);
	}
}