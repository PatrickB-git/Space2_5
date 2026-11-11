if _has_shot == false {
switch(atk_type) {
	case "Lasers":
		y += 8;
	break;
	case "Missiles":
		//fires seeking missiles
		y += 10;
	break;
	case "Jolts":
		y += 10;
	break;
	case "Blazes":
		//fires blaze
		y += 7;
	break;
	case "Frost":
		//fires ice blade
		y += 10;
	break;
	case "Ram":
		//creates rushing effect around ship
		y += 8;
	break;
	case "Acid":
		y += 7;
	break;
}
}

if place_meeting(x, y, obj_player_ship) and _has_shot == false {
	alarm_set(1, 45);
	_has_shot = true;
}