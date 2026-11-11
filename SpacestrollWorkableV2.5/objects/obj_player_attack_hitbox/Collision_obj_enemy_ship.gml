info =
{
	range : _reach,
	atk_type : _type,
	origin : _my_creator,
}


if _reach_type != "Breach" and _reach_type != "Charge" and _has_hit == false {
	_my_creator._actions_taken += _action_cost;
	global._player_actions_taken += 1;
	show_debug_message("Twit");
	instance_create_layer(_my_creator.x, _my_creator.y, "AttackDefense", obj_player_attack_visual, info);
	alarm_set(2, 1);
	_has_hit = true;
}

if _reach_type == "Breach" and _has_hit == false {
	_my_creator._actions_taken += _action_cost;
	global._player_actions_taken += 1;
	show_debug_message("Twit");
	instance_create_layer(_my_creator.x, _my_creator.y, "AttackDefense", obj_player_attack_visual, info);
	y -= 100;
	_has_hit = true;
}

if _reach_type == "Charge" and _has_hit == false {
	_pause = true;
	_my_creator._actions_taken += _action_cost;
	global._player_actions_taken += 1;
	global._move_x = x;
	global._move_y = y;
	_my_creator._moving = true;
	instance_create_layer(_my_creator.x, _my_creator.y, "AttackDefense", obj_player_attack_visual, info);
	alarm_set(2, 1);
	_has_hit = true;
}
