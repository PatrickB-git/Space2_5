_save_fleet = array_create(array_length(global._player_fleet));
for (var i = 0; i < array_length(global._player_fleet); i += 1) {
	array_set(_save_fleet, i, global._player_fleet[i]);
}
array_sort(_save_fleet, true);
show_debug_message(string(_save_fleet[2]));
c = 0;

_slot1 = _save_fleet[c];
c += 1;
_slot2 = _save_fleet[c];
c += 1;
_slot3 = _save_fleet[c];
c += 1;

_slots = 
{
	a : _slot1,
	b : _slot2,
	c : _slot3,
}

instance_create_depth(inst_ship_slot_1.x, inst_ship_slot_1.y, 300, obj_slot_1_token, _slots);
instance_create_depth(inst_ship_slot_2.x, inst_ship_slot_2.y, 300, obj_slot_2_token, _slots);
instance_create_depth(inst_ship_slot_3.x, inst_ship_slot_3.y, 300, obj_slot_3_token, _slots);