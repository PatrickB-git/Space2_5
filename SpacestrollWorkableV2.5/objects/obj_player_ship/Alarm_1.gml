/// @description Focus View
if instance_exists(obj_anchor_point) == false and _deathCheck == false {
	global._viewing_ship = self;
	global._player_inspect = true;
	global._enemy_inspect = false;
}