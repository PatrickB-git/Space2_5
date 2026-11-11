_the_ship = global._ship_selected;
_the_pilot = global._pilot_selected;
_the_cost = _the_ship._ship_cost;

if place_meeting(x, y, obj_player_ship) {
	instance_destroy(self, false);
}
