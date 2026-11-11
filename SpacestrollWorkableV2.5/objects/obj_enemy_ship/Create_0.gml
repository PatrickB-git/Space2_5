_id = identity;
_attack = attack;
_max_attack = attack;
_defense = defense;
_max_defense = defense;
_hp = health_points;
_max_hp = health_points;
_attack_type = attack_type;
_defense_type = defense_type;
_pilot = pilot;
_actions_taken = 0;
_max_actions = max_actions;
_value = value;
_cycle = 0
_move_x = x;
_move_y = y;
ds_list_add(global._priority, self);

/*
if global._enemy_score == global._current_fleet_count {
	_first_enemy = true;
}
else {
	_first_enemy = false;
}
*/

global._active_enemies += 1;
global._current_fleet_count -= 1;

image_angle = 180;
direction = 180;
speed = 0;

details =
{
	type : _attack_type,
	strength : _attack,
	identity : _id,
}

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
alt_directions =
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
_release = true;
_deathCheck = false;
_attack_distance = 350;
_moving = false;
_defense_regen = regen;
//_can_fire = false;
_check_fire = false;
_actCheck = false;

_stun = 0;
_burn = 0;
_freeze = 0;
_corrode = 0;
_drop = false;

enemyDirections(_id);
