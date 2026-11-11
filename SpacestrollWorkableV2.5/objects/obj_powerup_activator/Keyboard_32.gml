visible = true;

if (mouse_check_button_pressed(mb_left) == true) and (place_meeting(mouse_x, mouse_y, obj_enemy_ship) == true) and (global._powerup_1_count > 0) {
	global._powerup_1_count -= 1;
	instance_create_layer(x, y, "Visual_Effects", obj_rail_shell_powerup);
	//create temporary object that deals true damage to the selected enemy ship
}

if (mouse_check_button_pressed(mb_left) == true) and (place_meeting(mouse_x, mouse_y, obj_player_ship) == true) and (global._powerup_2_count > 0) {
	global._powerup_2_count -= 1;
	instance_create_layer(x, y, "Visual_Effects", obj_repair_drone_powerup);
	//create temporary object that restores health to the selected player ship
}

//works