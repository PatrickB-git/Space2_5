_reach = 3;
_action_cost = cost;
_reach_type = "Normal";
_status_effect = "None";
_pause = false;
_step_size = 0;
_firepower = strength;
_max_power = strength;
_power_gain = 0;
_type = type;
_empower = empower;
_challenge = challenge;
_pilot_bonus = pilot_bonus;
_has_hit = false;
_my_creator = instance_nearest(x, y, obj_player_ship);
show_debug_message("lose" + string(_my_creator._actions_taken));
_first_time = first_hit;
_pilot = rank;



switch(type) {
	case "Lasers":
		_live = true;
	break;
	case "Missiles":
		_live = true;
		_reach = 6;
		_reach_type = "Homing";
		_start_x = x;
		_start_y = y;
	break;
	case "Beams":
		_live = true;
		_reach = 7;
		_reach_type = "Breach";
	break;
	case "Jolts":
		_live = true;
		_status_effect = "Stun";
	break;
	case "Blazes":
		_status_effect = "Burn";
	break;
	case "Frost":
		_live = true;
		_status_effect = "Freeze";
	break;
	case "Ram":
		_live = false;
		_reach_type = "Charge";
		switch(identity) 
		{
			case "G100 Wasp":
			_reach = 3;
			_firepower -= 3;
			_power_gain = 1;
			break;
			
			case "G250 Wasp":
			_reach = 4;
			_firepower -= 5;
			_power_gain = 2;
			break;
			
			case "Shellzerker":
			_reach = 2;
			_firepower -= 3;
			_power_gain = 2;
			break;
			
			case "Slugger":
			_reach = 2;
			_firepower -= 1;
			_power_gain = 1;
			break;
			
			case "Juggernaut":
			_reach = 3;
			_firepower -= 6;
			_power_gain = 2;
			break;
		}
	break;
	case "Acid":
		_live = true;
		_status_effect = "Corrosion";
	break;
}

info =
{
	range : _reach,
	atk_type : _type,
}