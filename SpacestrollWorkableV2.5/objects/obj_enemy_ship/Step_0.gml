if _hp <= 0 and _deathCheck == false {
	alarm_set(6, 1);
	_check_fire = true;
	_deathCheck = true;	
}

MoveCheck_A(_move_x, _move_y, speed, _moving);
//for stopping movement from going too far

ActionCheck();
//ends to turn after actions max has been reached

PriorityCheck();
//for starting the initial turn



if global._player_turn == false and _actions_taken < _max_actions and _check_fire == false and global._turn_taken == false and ds_list_find_value(global._priority, global._turn_now) == self {
	show_debug_message("Enemy " + string(global._turn_now) + ": Checking to Fire");
	e_AttackCheck(_attack_type, _attack, _id);
	_check_fire = true;
}
//looks to make an attack, if no attack can be made, then it looks to move
//shifts priority in accordance to lost ships
	
if global._player_turn == true {
	_actions_taken = 0;
	_actCheck = false;
}
//resets actions taken

if _corrode > 0 {
	if _defense_type == "Energy Shield" or _defense_type == "Deflectors" or _defense_type == "Plasma Wall" or _defense_type == "Chemical Barrier" {
		_defense_regen -= corrode;
		if _defense_regen < 0 {
			_defense_regen = 0;
		}
	}
	else {
		_defense -= _corrode;
	}
	_corrode = 0;
}
