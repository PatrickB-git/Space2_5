/// @description Action: Move Ship

directions =
{	
	up : 0,
	down : 0,
	right : 0,
	left : 0,
	up_r : 0,
	up_l : 0,
	down_r : 0,
	down_l : 0,
}

fullDirectionalCheck();

if instance_exists(obj_anchor_point) == false and _deathCheck == false and global._player_turn == true and (_actions_taken + _move_cost) <= _max_actions and global._player_actions_taken < global._player_actions_max {
	if (keyboard_check(vk_space) == false) {
		show_debug_message("Player Ship Looking to Move");
		instance_create_layer(x, y, "Outline1", obj_anchor_point, directions);
	}
}