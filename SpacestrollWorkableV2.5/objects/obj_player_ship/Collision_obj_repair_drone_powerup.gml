_hp += 3;
if _hp > _max_hp {
	_hp = _max_hp;
}
instance_destroy(instance_nearest(x, y, obj_repair_drone_powerup), false);
