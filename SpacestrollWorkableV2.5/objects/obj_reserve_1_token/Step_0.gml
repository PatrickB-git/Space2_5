
if global._pilot_1_active == true {
	_unselectable = true;
}
if global._player_turn == false and _vex == false {
	show_debug_message("Extra-1");
	global._pilot_2_wait -= 1;
	_vex = true;
}
if global._player_turn == true {
	_vex = false;
}
if global._pilot_1_wait < 0 {
	global._pilot_1_wait = 0;
}