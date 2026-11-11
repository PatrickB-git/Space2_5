
if global._pilot_3_active == true {
	_unselectable = true;
}
if global._player_turn == false and _vex == false {
	global._pilot_3_wait -= 1;
	_vex = true;
	show_debug_message("Extra-3");
}
if global._player_turn == true {
	_vex = false;
}
if global._pilot_3_wait < 0 {
	global._pilot_3_wait = 0;
}
