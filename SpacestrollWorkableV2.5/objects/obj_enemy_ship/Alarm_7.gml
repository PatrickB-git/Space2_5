/// @description Destroyed From Attack

if global._turn_taken == false and _priority == global._priority {
	global._priority -= 1;
	global._turn_taken = true;
}
global._destroy_points += round(_value * global._destroyed_multiplier);
global._total_fleet_count -= 1;
instance_destroy(self, true);