if global._player_turn == true and global._victory == false {
	global._total_points += (global._passive_points * global._equalized_points);
	global._end_turn = true;
	global._spawning = array_shift(_drew);
	show_debug_message(_drew);
	var locates = [250, 350, 450, 550, 650];
	var smol = array_shuffle(locates, 0, array_length(locates) - 1);
	instance_create_layer(array_first(smol), 128, "UI_2", obj_enemy_ship_spawn);
	alarm_set(0, 5);
	show_debug_message("Player Turn End");
	global._player_turn = false;
}
