info =
{
	range : _reach,
	atk_type : _type,
}

if instance_nearest(x, y, obj_enemy_ship) == global._attack_origin and _reach_type == "Charge" and _has_hit == false {
	global._can_fire = true;
	instance_create_layer(global._attack_origin.x, global._attack_origin.y, "AttackDefense", obj_enemy_attack_visual, info);
	alarm_set(2, 1);
	_has_hit = true;
}

if _reach_type != "Breach" and _reach_type != "Homing" {
	alarm_set(3, 1);
}
