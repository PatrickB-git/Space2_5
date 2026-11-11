
if global._pilot_4_active == true{
	_unselectable = true;
}
if global._player_turn == false and _vex == false {
	show_debug_message("Extra-4");
	global._pilot_4_wait -= 1;
	_vex = true;
}
if global._player_turn == true {
	_vex = false;
}
if global._pilot_4_wait < 0 {
	global._pilot_4_wait = 0;
}