if _hp <= 0 if _deathCheck == false {
	alarm_set(5, 100);
	_actions_taken = _max_actions;
	_deathCheck = true;
	//place to trigger death animations
}

ActCheck();

if global._player_turn == false {
	_actions_taken = 0;
	_first_attack = false;
	global._first_ship_strike = true;
}

if global._end_turn == true and _drop == true {
	_burn -= 1;
	_freeze -= 1;
	if _burn < 0 {
		_burn = 0;
	}
	if _freeze < 0 {
		_freeze = 0;
	}
	if _defense_type == "Energy Shield" or _defense_type == "Deflectors" or _defense_type == "Plasma Wall" or _defense_type == "Chemical Barrier" {
		_defense += _defense_regen;
		if _defense > _max_defense {
			_defense = _max_defense;
		}
	}
	_drop = false;
}

if _corrode > 0 {
	if _defense_type == "Energy Shield" or _defense_type == "Deflectors" or _defense_type == "Plasma Wall" or _defense_type == "Chemical Barrier" {
		_defense_regen -= _corrode;
		if _defense_regen < 0 {
			_defense_regen = 0;
		}
	}
	else {
		_defense -= _corrode;
	}
	_corrode = 0;
}

//need contingency for being knockedback, outside of the board
