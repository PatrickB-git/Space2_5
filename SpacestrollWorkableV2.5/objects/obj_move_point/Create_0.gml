image_xscale = 1;
image_yscale = 1;

visible = true;

switch(_placement) {
	case "UP":
	if collision_line(x, y, obj_anchor_point.x, obj_anchor_point.y - 76, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x, obj_anchor_point.y - 76, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._up_slide = false; 
		instance_destroy(self, false);
	}
	break;
	case "DOWN":
	if collision_line(x, y, obj_anchor_point.x, obj_anchor_point.y + 76, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x, obj_anchor_point.y + 76, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._down_slide = false;
		instance_destroy(self, false);
	}
	break;
	case "RIGHT":
	if collision_line(x, y, obj_anchor_point.x + 76, obj_anchor_point.y, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x + 76, obj_anchor_point.y, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._right_slide = false;
		instance_destroy(self, false);
	}
	break;
	case "LEFT":
	if collision_line(x, y, obj_anchor_point.x - 76, obj_anchor_point.y, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x - 76, obj_anchor_point.y, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._left_slide = false;
		instance_destroy(self, false);
	}
	break;
	case "UP R":
	if collision_line(x, y, obj_anchor_point.x + 76, obj_anchor_point.y - 76, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x + 76, obj_anchor_point.y - 76, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._up_right_slide = false;
		instance_destroy(self, false);
	}
	break;
	case "UP L":
	if collision_line(x, y, obj_anchor_point.x - 76, obj_anchor_point.y - 76, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x - 76, obj_anchor_point.y - 76, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._up_left_slide = false;
		instance_destroy(self, false);
	}
	break;
	case "DOWN R":
	if collision_line(x, y, obj_anchor_point.x + 76, obj_anchor_point.y + 76, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x + 76, obj_anchor_point.y + 76, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._down_right_slide = false;
		instance_destroy(self, false);
	}
	break;
	case "DOWN L": 
	if collision_line(x, y, obj_anchor_point.x - 76, obj_anchor_point.y + 76, obj_player_ship, false, false) != noone or collision_line(x, y, obj_anchor_point.x - 76, obj_anchor_point.y + 76, obj_enemy_ship, false, false) != noone {
		obj_anchor_point._down_left_slide = false;
		instance_destroy(self, false);
	}
	break;
	}
	

if x < 225 {
	instance_destroy(self, false);
}
if x > 675 {
	instance_destroy(self, false);
}
if y > 850 {
	instance_destroy(self, false);
}
if y < 100 {
	instance_destroy(self, false);
}
	
if y == 128 {
	//may need to create alternative in the future.
	visible = false;
}
show_debug_message("New Move Point Created");

show_debug_message(string(y));

switch(_placement) {
	case "UP":
		obj_anchor_point._up_slide = true;
	break;
	case "DOWN":
		obj_anchor_point._down_slide = true;
	break;
	case "RIGHT":
		obj_anchor_point._right_slide = true;
	break;
	case "LEFT":
		obj_anchor_point._left_slide = true;
	break;
	case "UP R":
		obj_anchor_point._up_right_slide = true;
	break;
	case "UP L":
		obj_anchor_point._up_left_slide = true;
	break;
	case "DOWN R":
		obj_anchor_point._down_right_slide = true;
	break;
	case "DOWN L":
		obj_anchor_point._down_left_slide = true;
	break;
}
