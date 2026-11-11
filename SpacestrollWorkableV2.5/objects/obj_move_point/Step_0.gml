switch(_placement) {
	case "UP":
		
		if _up_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
	case "DOWN":
	
		if _down_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
	case "RIGHT":
	
		if _right_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
	case "LEFT":
	
		if _left_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
	case "UP R":
	
		if _ur_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
	case "UP L":
	
		if _ul_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
	case "DOWN R":
	
		if _dr_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
	case "DOWN L": 
	
		if _dl_check == true {
		global._move_x = x;
		global._move_y = y;
		global._ship_moving._release = true;
		}
	break;
}

if global._ship_moving._release == true {
	if y < 100 {
		instance_create_layer(x, y, "UI_1", obj_player_ship_exit);
	}
	instance_destroy(self, false);
	show_debug_message("Now Moving");
}