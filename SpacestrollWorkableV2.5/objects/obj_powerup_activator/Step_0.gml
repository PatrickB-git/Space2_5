x = instance_nearest(mouse_x, mouse_y, obj_spaces).x;
y = instance_nearest(mouse_x, mouse_y, obj_spaces).y;

//add additional sprite under the case when the player is highlighting something without any powerup usages left
if place_meeting(x, y, obj_player_ship) {
	sprite_index = spr_drone_point;
}
else if place_meeting(x, y, obj_enemy_ship) {
	sprite_index = spr_shell_point;
}
else {
	sprite_index = spr_player_info_box;
}