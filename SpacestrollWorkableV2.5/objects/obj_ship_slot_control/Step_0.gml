var _can_go = true;
var _turner = 0;



if _slot1 == 0 {
	_can_go = true;
	_turner = 1;
	_slot1 = _save_fleet[c];
	c += 1;
	
	show_debug_message(string(_slot1));
}
if _slot2 == 0 {
	_can_go = true;
	_turner = 2;
	_slot2 = _save_fleet[c];
	c += 1;
	
	show_debug_message(string(_slot2));
}
if _slot3 == 0 {
	_can_go = true;
	_turner = 3;
	_slot3 = _save_fleet[c];
	c += 1;
	show_debug_message(string(_slot3));
}

if _can_go == true {
	switch(_turner) {
		case 1:
		_slots = 
		{
		a : _slot1,
		}
		instance_destroy(obj_slot_1_token, true);
		instance_create_depth(inst_ship_slot_1.x, inst_ship_slot_1.y, 300, obj_slot_1_token, _slots);
		_turner = 0;
		break;
		case 2:
		_slots = 
		{
		b : _slot2,
		}
		instance_destroy(obj_slot_2_token, true);
		instance_create_depth(inst_ship_slot_2.x, inst_ship_slot_2.y, 300, obj_slot_2_token, _slots);
		_turner = 0;
		break;
		case 3:
		_slots = 
		{
		c : _slot3,
		}
		instance_destroy(obj_slot_3_token, true);
		instance_create_depth(inst_ship_slot_3.x, inst_ship_slot_3.y, 300, obj_slot_3_token, _slots);
		_turner = 0;
		break;
	}
	_can_go = false;
}

if (c + 1) > array_length(_save_fleet) {
	c = 0;
}