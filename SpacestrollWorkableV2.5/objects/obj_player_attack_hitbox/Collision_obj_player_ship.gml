info =
{
	range : _reach,
	atk_type : _type,
}

if _reach_type != "Breach" and _reach_type != "Homing" {
	alarm_set(3, 1);
}
