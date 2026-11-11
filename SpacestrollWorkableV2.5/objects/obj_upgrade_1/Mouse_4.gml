switch(global._upgrade_1_level) {
	case 0:
		if global._total_points >= 25 {
			global._inaction_bonus = 1;
			global._passive_points = 2;
			alarm_set(0, 3);
			global._total_points -= 25;
		}
	break;
	
	case 1:
		if global._total_points >= 40 {
			global._inactive_bonus = 1;
			global._passive_points = 4;
			alarm_set(0, 3);
			global._total_points -= 40;
		}
	break;
	
	case 2:
		if global._total_points >= 55 {
			global._passive_points = 6;
			alarm_set(0, 3);
			global._total_points -= 55;
		}
	break;
	
	case 3:
		if global._total_points >= 70 {
			global._scored_divider = 2;
			global._destroyed_multiplier = 1.5;
			global._passive_points = 8;
			alarm_set(0, 3);
			global._total_points -= 70;
		}
	break;
	
	case 4:
		if global._total_points >= 85 {
			global._passive_points = 15;
			alarm_set(0, 3);
			global._total_points -= 85;
		}
	break;
}