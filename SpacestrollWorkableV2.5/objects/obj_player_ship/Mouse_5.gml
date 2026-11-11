/// @description Action: Attack w/ Ship
if _deathCheck == false and global._player_turn == true and view_visible[0] == true and global._player_actions_taken < global._player_actions_max {
	show_debug_message(string(_actions_taken));
	if _actions_taken + _attack_cost <= _max_actions { //checking to see if ship has the action points aviable
		p_AttackCheck(_attack_type, _attack, _id, _attack_cost, _pilot_bonus, _bonus_power, _bonus_against, _first_attack, _elite);
	}
	alarm_set(0, 10);
}