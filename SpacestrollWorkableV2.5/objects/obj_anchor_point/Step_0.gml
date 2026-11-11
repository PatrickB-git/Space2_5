
if instance_exists(obj_move_point) {
if _up_slide == true {
	if mouse_y < y - 128 {
		show_debug_message(distance_to_point(mouse_x, mouse_y));
		obj_move_point._up_check = true;
		_move_made = true;
	}
}
if _down_slide == true {
	if mouse_y > y + 128 {
		show_debug_message(distance_to_point(mouse_x, mouse_y));
		obj_move_point._down_check = true;
		_move_made = true;
	}
}
if _right_slide == true {
	if mouse_x > x + 128 {
		show_debug_message(distance_to_point(mouse_x, mouse_y));
		obj_move_point._right_check = true;
		_move_made = true;
	}
}
if _left_slide == true {
	if mouse_x < x - 128 {
		show_debug_message(distance_to_point(mouse_x, mouse_y));
		obj_move_point._left_check = true;
		_move_made = true;
	}
}
if _up_right_slide == true {
	if (mouse_y < y - 64) and (mouse_x > x + 64) {
		obj_move_point._ur_check = true;
		_move_made = true;
	}
}
if _up_left_slide == true {
	if (mouse_y < y - 64) and (mouse_x < x - 64) {
		obj_move_point._ul_check = true;
		_move_made = true;
	}
}
if _down_right_slide == true {
	if (mouse_y > y + 64) and (mouse_x > x + 64) {
		obj_move_point._dr_check = true;
		_move_made = true;
	}
}
if _down_left_slide == true {
	if (mouse_y > y + 64) and (mouse_x < x - 64) {
		obj_move_point._dl_check = true;
		_move_made = true;
	}
}
}

if _move_made == true {
	alarm_set(0, 1);
}
