var pet = instance_nearest(x, y, obj_enemy_attack_hitbox);
var final_str = pet._firepower;
var atk_type = pet._type;
var _efficacy = global._efficacy;
var _starting_hp = _hp;
var _immunity = false;

if y < 500 and global._resilient == true {
	_efficacy -= 1;
}

if _defense > 0 {
	var rapture =
	{
		type : _defense_type,
		icon : sprite_index,
	}
	//create defense visual
	instance_create_layer(x, y, "AttackDefense", obj_player_defense_visual, rapture);
}

if _defense_type == "Plasma Wall" or _defense_type == "Chemical Barrier" or _defense_type == "Evasion" or _defense_type == "Decoys" {
	_immunity = true;
}

switch(_defense_type) {
	case "Evasion":
		if atk_type == "Lasers" {
			_efficacy = -2;
		}
		if atk_type == "Missiles" {
			_efficacy = 2;
		}
	break;
	case "Decoys":
		if atk_type == "Missiles" {
			_efficacy = -2;
		}
		if atk_type == "Acid" {
			_efficacy = 2;
		}
	break;
	case "Energy Shield":
		if atk_type == "Beams" {
			_efficacy = -2;
		}
		if atk_type == "Lasers" {
			_efficacy = 2;
		}
	break;
	case "Absorbtion Plates":
		if atk_type == "Jolts" {
			_efficacy = -2;
		}
		if atk_type == "Blazes" {
			_efficacy = 2;
		}
	break;
	case "Plasma Wall":
		if atk_type == "Blazes" {
			_efficacy = -2;
		}
		if atk_type == "Frost" {
			_efficacy = 2;
		}
	break;
	case "Deflectors":
		if atk_type == "Frost" {
			_efficacy = -2;
		}
		if atk_type == "Jolts" {
			_efficacy = 2;
		}
	break;
	case "Armor":
		if atk_type == "Ram" {
			_efficacy = -2;
		}
		if atk_type == "Beams" {
			_efficacy = 2;
		}
	break;
	case "Chemical Barrier":
		if atk_type == "Acid" {
			_efficacy = -2;
		}
		if atk_type == "Ram" {
			_efficacy = 2;
		}
	break;
}


if _defense_type == "Energy Shield" or _defense_type == "Deflectors" or _defense_type == "Plasma Wall" or _defense_type == "Chemical Barrier" {
	_defense -= (final_str + _efficacy);
	if _defense > _max_defense {
		_defense = _max_defense
	}
	_hp += _defense;
	if _hp > _max_hp {
		_hp = _max_hp;
	}
	if _defense < 0 {
		_defense = 0;
	}
}

if _defense_type == "Evasion" or _defense_type == "Decoys" {
	if _defense < (final_str + _efficacy) {
		var hurt = (final_str + _efficacy) - 1;
		if hurt < 0 {
			hurt = 0
		}
		_hp -= hurt
	}
}
if _defense_type == "Armor" or _defense_type == "Absorbtion Plates" {
	var hurt = (final_str + _efficacy) - _defense;
	if hurt < 1 {
		hurt = 1;	
	}
	_hp -= hurt;
}


if _hp < _starting_hp {
	_immunity = false;
}

if _immunity == false {
	switch(atk_type) {
		case "Jolts":
			_stun += 1;
		break;
		case "Blazes":
			_burn += 1;
		break;
		case "Frost":
			_freeze += 1;
		break;
		case "Acid":
			_corrode += 1;
		break;
	}
}

if atk_type == "Ram" {
	show_debug_message(string(y));
	speed = 20;
	move_towards_point(x, y + 200, speed);
	alarm_set(6, 11);
}





//does not yet account for status application/immunity
//does not yet account for defense animations