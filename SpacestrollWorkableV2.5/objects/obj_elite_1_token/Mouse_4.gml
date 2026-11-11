if _unselectable == false and global._elite_1_alive == true {
	global._pilot_selected = 7;
	depth = 0;
	if global._ship_selected != obj_player_ship_spawn and _micros == false {
		global._placing_ship = true;
		alarm_set(1, 2);
	}
}