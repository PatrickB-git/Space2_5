/// @description Move Check
if _freeze > 0 {
	global._can_fire = true;
}

if global._can_fire == false {
		for (cycle = 0; cycle < 16; cycle++) {
			show_debug_message(string(cycle));
			switch(cycle) {
				case 0: //down
					MoveCheck_B(directions.down, 0, 100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
					//show_debug_message("x: " + global._move_x + "  y: " + global._move_y);
				break;
				case 1: //down left
					MoveCheck_B(directions.down_l, -100, 100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 2: //down right
					MoveCheck_B(directions.down_r, 100, 100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 3: //down - alt
					MoveCheck_C(alt_directions.down, 0, 100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 4: //down left - alt
					MoveCheck_C(alt_directions.down_l, -100, 100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 5: //down right - alt
					MoveCheck_C(alt_directions.down_r, 100, 100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				
				case 6: //right
					MoveCheck_B(directions.right, 100, 0, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 7: //left
					MoveCheck_B(directions.left, -100, 0, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 8: //right - alt
					MoveCheck_C(alt_directions.right, 100, 0, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 9: //left - alt
					MoveCheck_C(alt_directions.left, -100, 0, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 10: //up right
					MoveCheck_B(directions.up_r, 100, -100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 11: //up left
					MoveCheck_B(directions.up_l, -100, -100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 12: //up
					MoveCheck_B(directions.up, 0, -100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 13: //up right - alt
					MoveCheck_C(alt_directions.up_r, 100, -100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 14: //up left - alt
					MoveCheck_C(alt_directions.up_l, -100, -100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				case 15: //up - alt
					MoveCheck_C(alt_directions.up, 0, -100, x, y);
					if cycle == 16 {
						move_towards_point(_move_x, _move_y, speed);
					}
				break;
				}
			}
		}

	if _move_x > 700 {
		_move_x = 650;
		move_towards_point(_move_x, _move_y, speed);
	}
	if _move_x < 200 {
		_move_x = 250;
		move_towards_point(_move_x, _move_y, speed);
	}
	if _move_y > 878 {
		_move_y = 828;
		move_towards_point(_move_x, _move_y, speed);
	}
	if _move_y < 78 {
		_move_y = 128;
		move_towards_point(_move_x, _move_y, speed);
	}
show_debug_message("Enemy " + string(global._turn_now) + ": Now Moving");
alarm_set(1, 5);