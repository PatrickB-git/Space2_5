switch(global._upgrade_2_level) {
	case 0:
		if global._total_points >= 20 {
			global._full_actions_max = 12;
			alarm_set(0, 3);
			global._total_points -= 20;
		}
	break;
	
	case 1:
		if global._total_points >= 30 {
			global._full_actions_max = 15;
			alarm_set(0, 3);
			global._total_points -= 30;
		}
	break;
	
	case 2:
		if global._total_points >= 20 {
			global._full_actions_max = 17;
			alarm_set(0, 3);
			global._total_points -= 20;
		}
	break;
	
	case 3:
		if global._total_points >= 30 {
			global._full_actions_max = 20;
			alarm_set(0, 3);
			global._total_points -= 30;
		}
	break;
	
	case 4:
		if global._total_points >= 50 {
			global._full_actions_max = 25;
			alarm_set(0, 3);
			global._total_points -= 50;
		}
	break;
}