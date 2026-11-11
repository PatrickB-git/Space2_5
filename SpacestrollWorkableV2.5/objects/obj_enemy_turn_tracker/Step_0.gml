if global._player_turn == false and global._active_enemies > 0 {
	if global._turn_taken == true and _lurx == true {
		show_debug_message("Starting Turn Order");
		alarm_set(0, 5);
		_lurx = false;
	}
	if global._turn_now == (ds_list_size(global._priority) - 1) {
		global._player_actions_taken = 0;
		if global._player_actions_max < _balk {
			global._player_actions_max += 1;
		}
	global._player_turn = true;
	instance_destroy(self, false);
	}
}
else {
	global._player_actions_taken = 0;
		if global._player_actions_max < _balk {
			global._player_actions_max += 1;
		}
	global._player_turn = true;
	instance_destroy(self, false);
}