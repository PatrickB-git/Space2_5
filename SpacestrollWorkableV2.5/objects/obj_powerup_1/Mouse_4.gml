if _cost <= global._total_points {
	global._powerup_1_count += 1;
	global._total_points -= _cost;
	_cost += _cost_scale;
}