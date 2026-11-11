if _unselectable == false and global._pilot_3_ready == true {
	global._pilot_selected = 3;
	depth = 0;
	if global._ship_selected != obj_player_ship_spawn and _micros == false {
		global._placing_ship = true;
		alarm_set(1, 2);
	}
}