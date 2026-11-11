switch(global._upgrade_3_level) {
	case 0:
		if global._total_points >= 15 {
			global._wait_decrease = 1;
			global._pilot_1_wait -= 1;
			global._pilot_2_wait -= 1;
			global._pilot_3_wait -= 1;
			global._pilot_4_wait -= 1;
			alarm_set(0, 3);
			global._total_points -= 15;
		}
	break;
	
	case 1:
		if global._total_points >= 35 {
			global._match_bonus = 1;
			global._pilot_1_wait -= 2;
			global._pilot_2_wait -= 2;
			global._pilot_3_wait -= 2;
			global._pilot_4_wait -= 2;
			alarm_set(0, 3);
			global._total_points -= 35;
		}
	break;
	
	case 2:
		if global._total_points >= 45 {
			global._wait_decrease = 2;
			global._pilot_1_wait -= 1;
			global._pilot_2_wait -= 1;
			global._pilot_3_wait -= 1;
			global._pilot_4_wait -= 1;
			alarm_set(0, 3);
			global._total_points -= 45;
		}
	break;
	
	case 3:
		if global._total_points >= 65 {
			global._match_bonus = 2;
			global._pilot_1_wait -= 2;
			global._pilot_2_wait -= 2;
			global._pilot_3_wait -= 2;
			global._pilot_4_wait -= 2;
			alarm_set(0, 3);
			global._total_points -= 65;
		}
	break;
	
	case 4:
		if global._total_points >= 75 {
			global._wait_decrease = 4;
			global._pilot_1_wait -= 1;
			global._pilot_2_wait -= 1;
			global._pilot_3_wait -= 1;
			global._pilot_4_wait -= 1;
			alarm_set(0, 3);
			global._total_points -= 75;
		}
	break;
}