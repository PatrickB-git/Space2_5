if global._placing_ship == true {
	visible = true;
}
else {
	instance_destroy(self, false);
}

if global._player_turn == false {
	visible = false;
	show_debug_message("Removed Place Point");
	global._placing_ship = false;
}

if _the_ship != global._ship_selected {
	visible = false;
	show_debug_message("Removed Place Point");
	instance_destroy(self, false);
}

if _the_pilot != global._pilot_selected {
	visible = false;
	show_debug_message("Removed Place Point");
	instance_destroy(self, false);
}