var pet = instance_nearest(x, y, obj_player_attack_hitbox);
var final_str = pet._firepower;
var atk_type = pet._type;
var _efficacy = 0;

if atk_type == "Beams" {
if _defense_type == "Energy Shield" {
	_efficacy = -2;
}
if _defense_type == "Armor" {
	_efficacy = 2;
}

if _defense_type == "Energy Shield" or _defense_type == "Deflectors" or _defense_type == "Plasma Wall" or _defense_type == "Chemical Barrier" {
	_defense -= (final_str + _efficacy);
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
		_hp -= (final_str + _efficacy) - 1;
	}
}
if _defense_type == "Armor" or _defense_type == "Absorbtion Plates" {
	var hurt = (final_str + _efficacy) - _defense;
	if hurt < 1 {
		hurt = 1;	
	}
	_hp -= hurt;
}
}
