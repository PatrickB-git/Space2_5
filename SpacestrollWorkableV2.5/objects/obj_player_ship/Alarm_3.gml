/// @description Attack Action
/*
details =
{
	type : _attack_type,
	strength : _attack,
	identity : _id,
	cost : _attack_cost,
	pilot_bonus : _pilot_bonus,
	empower : _bonus_power,
	challenge : _bonus_against,
	first_hit : _first_attack,
	rank : _elite,
}
	global._attack_origin = self;
	instance_create_layer(x, y, "UI_3", obj_player_attack_hitbox, details);
	_deathCheck = true;
*/