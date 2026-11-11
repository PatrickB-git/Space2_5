/// @description Defense Regen

if _defense_type == "Energy Shield" or _defense_type == "Deflectors" or _defense_type == "Plasma Wall" or _defense_type == "Chemical Barrier" {
	_defense += _defense_regen;
	if _defense > _max_defense {
		_defense = _max_defense;
	}
}