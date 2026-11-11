info =
{
	range : _reach,
	atk_type : _type,
}

if _reach_type != "Breach" and _has_hit == false {
	show_debug_message("Hit!");
	global._can_fire = true;
	instance_create_layer(_my_creator.x, _my_creator.y, "AttackDefense", obj_enemy_attack_visual, info);
	alarm_set(2, 1);
	_has_hit = true;
}

if _reach_type == "Breach" and _has_hit == false {
	show_debug_message("Hit!");
	global._can_fire = true;
	show_debug_message("Twit");
	instance_create_layer(_my_creator.x, _my_creator.y, "AttackDefense", obj_enemy_attack_visual, info);
	alarm_set(2, 1);
	y += 100;
	_has_hit = true;
}

if _reach_type == "Charge" and _has_hit == false {
	_pause = true;
	show_debug_message("Hit!");
	global._can_fire = true;
	global._move_x = x;
	global._move_y = y;
	_my_creator._moving = true;
	instance_create_layer(_my_creator.x, _my_creator.y, "AttackDefense", obj_enemy_attack_visual, info);
	alarm_set(2, 1);
	_has_hit = true;
}