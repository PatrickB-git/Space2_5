switch(_reach_type) {
	case "Normal":
		if _reach > 0 and _pause == false {
			y += 100;
			alarm_set(0, 2);
			_pause = true;
		}
	break;
	case "Homing":
		if _reach > 0 and _pause == false {
			switch(_reach) {
				case 5:
				x = _start_x;
				y = _start_y + 100;
				break;
				case 4:
				x = _start_x + 100;
				y = _start_y;
				break;
				case 3:
				x = _start_x - 100;
				y = _start_y;
				break;
				case 2:
				x = _start_x + 100;
				y = _start_y + 100;
				break;
				case 1:
				x = _start_x - 100;
				y = _start_y + 100;
				break;
			}
			alarm_set(0, 2);
			_pause = true;
		}
	break;
	case "Breach":
		if _reach > 0 and _pause == false {
			y += 100;
			alarm_set(0, 2);
			_pause = true;
		}
	break;
	case "Charge":
			if _reach > 0 and _pause == false {
				if _firepower < _max_power {
					_firepower += _step_size;
				}
				y += 100;
				alarm_set(0, 2);
				_pause = true;
			}
	break;
}

if _reach == 0 {
	if _reach_type != "Breach" {
		instance_destroy(self, false);
	}
	else {
		alarm_set(2, 1);
	}
}

if x < 225 {
	instance_destroy(self, false);
}
if x > 675 {
	instance_destroy(self, false);
}
if y > 850 {
	//may need to create alternative in the future.
	instance_destroy(self, false);
}
if y < 100 {
	instance_destroy(self, false);
}