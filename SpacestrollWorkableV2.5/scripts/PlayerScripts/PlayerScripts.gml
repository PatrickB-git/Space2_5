function PlayerScripts() 
{

}

function AnchorScript_A(crosst, direct, x_shift, y_shift) 
{
	cross = 
	{
	ship : global._ship_moving,
	_placement : crosst,
	_right_check : false,
	_up_check : false,
	_down_check : false,
	_left_check : false,
	_ur_check : false,
	_ul_check : false,
	_dr_check : false,
	_dl_check : false,
	}
	instance_create_layer(x + (direct * x_shift), y + (direct * y_shift), "UI_1", obj_move_point, cross);
}

function PilotBonus(_pb)
{
	switch(_pb) {
	case "Energetic":
		if _attack_type == "Lasers" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Competitve":
		if _attack_type == "Missiles" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Cautious":
		if _attack_type == "Beams" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Loud":
		if _attack_type == "Jolts" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Passionate":
		if _attack_type == "Blazes" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Quiet":
		if _attack_type == "Frost" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Brash":
		if _attack_type == "Ram" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Curious":
		if _attack_type == "Acid" {
			if _pilot < 5 {
				_max_attack += 1;
				_attack += 1;
			}
			if _pilot > 6 {
				_max_attack += 2;
				_attack += 2;
				}
		}
	break;
	
	case "Joyous":
		if _defense_type == "Evasion" {
			if _pilot < 5 {
				_max_defense += 1;
				_defense += 1;
			}
			if _pilot > 6 {
				_max_defense += 2;
				_defense += 2;
				}
		}
	break;
	
	case "Lazy":
		if _defense_type == "Decoys" {
			if _pilot < 5 {
				_max_defense += 1;
				_defense += 1;
			}
			if _pilot > 6 {
				_max_defense += 2;
				_defense += 2;
				}
		}
	break;
	
	case "Inquisitive":
		if _defense_type == "Energy Shield" {
			if _pilot < 5 {
				_max_defense += 3;
				_defense += 3;
			}
			if _pilot > 6 {
				_max_defense += 4;
				_defense += 4;
				_defense_regen += 1;
				}
		}
	break;
	
	case "Soft":
		if _defense_type == "Absorbtion Plates" {
			if _pilot < 5 {
				_max_defense += 1;
				_defense += 1;
			}
			if _pilot > 6 {
				_max_defense += 2;
				_defense += 2;
				}
		}
	break;
	
	case "Deteched":
		if _defense_type == "Plasma Wall" {
			if _pilot < 5 {
				_max_defense += 2;
				_defense += 2;
				_defense_regen += 1;
			}
			if _pilot > 6 {
				_max_defense += 3;
				_defense += 3;
				_defense_regen += 2;
				}
		}
	break;
	
	case "Patient":
		if _defense_type == "Deflectors" {
			if _pilot < 5 {
				_max_defense += 3;
				_defense += 3;
			}
			if _pilot > 6 {
				_max_defense += 4;
				_defense += 4;
				_defense_regen += 1;
				}
		}
	break;
	
	case "Protective":
		if _defense_type == "Armor" {
			if _pilot < 5 {
				_max_defense += 1;
				_defense += 1;
			}
			if _pilot > 6 {
				_max_defense += 2;
				_defense += 2;
				}
		}
	break;
	
	case "Prideful":
		if _defense_type == "Chemical Barrier" {
			if _pilot < 5 {
				_max_defense += 2;
				_defense += 2;
				_defense_regen += 1;
			}
			if _pilot > 6 {
				_max_defense += 3;
				_defense += 3;
				_defense_regen += 2;
				}
		}
	break;
	
	case "Cynical":
		_bonus_against = "Evasion";
		if _pilot < 5 {
			_bonus_power = 1;
		}
		if _pilot > 6 {
			_bonus_power = 2;
		}
	break;
	
	case "Motivated":
		_bonus_against = "Decoys";
		if _pilot < 5 {
			_bonus_power = 1;
		}
		if _pilot > 6 {
			_bonus_power = 2;
		}
	break;
	
	case "Stubborn":
		_bonus_against = "Energy Shield";
		if _pilot < 5 {
			_bonus_power = 2;
		}
		if _pilot > 6 {
			_bonus_power = 3;
		}
	break;
	
	case "Serious":
		_bonus_against = "Absorbtion Plates";
		if _pilot < 5 {
			_bonus_power = 1;
		}
		if _pilot > 6 {
			_bonus_power = 2;
		}
	break;
	
	case "Vengeful":
		_bonus_against = "Plasma Wall";
		if _pilot < 5 {
			_bonus_power = 2;
		}
		if _pilot > 6 {
			_bonus_power = 3;
		}
	break;
	
	case "Crude":
		_bonus_against = "Deflectors";
		if _pilot < 5 {
			_bonus_power = 2;
		}
		if _pilot > 6 {
			_bonus_power = 3;
		}
	break;
	
	case "Vicious":
		_bonus_against = "Armor";
		if _pilot < 5 {
			_bonus_power = 1;
		}
		if _pilot > 6 {
			_bonus_power = 2;
		}
	break;
	
	case "Humble":
		_bonus_against = "Chemical Barrier";
		if _pilot < 5 {
			_bonus_power = 2;
		}
		if _pilot > 6 {
			_bonus_power = 3;
		}
	break;
}
}

function ActCheck()
{
	if global._player_turn == true {
	if _release == true {
		_deathCheck = true;
		speed = 15;
		move_towards_point(global._move_x, global._move_y, speed);
	}
	if _release == true and distance_to_point(global._move_x, global._move_y) < 1 {
		_actions_taken += _move_cost;
		global._player_actions_taken += 1;
		x = global._move_x
		y = global._move_y
		alarm_set(0, 5);
		speed = 0;
		_release = false;
	}
	
	if _moving == true {
		info = 
		{
			atk_type : _attack_type,
		}
		instance_create_layer(x, y, "AttackDefense", obj_player_attack_visual, info);
		speed = 15;
		move_towards_point(global._move_x, global._move_y, speed);
	}
	if _moving == true and distance_to_point(global._move_x, global._move_y) < 1 {
		x = global._move_x
		y = global._move_y
		alarm_set(0, 10);
		speed = 0;
		_moving = false;
	}
	if _stun > 0 {
		_actions_taken += _stun;
		_stun = 0;
	}
	if _burn > 0 and _drop == false {
		_hp -= _burn;
	}
	_drop = true;
}
}

function p_AttackCheck(atk_type, atk, ID, atk_cost, pilot_b, b_power, b_against, f_strike, eli)
{
	details =
	{
		type : atk_type,
		strength : atk,
		identity : ID,
		cost : atk_cost,
		pilot_bonus : pilot_b,
		empower : b_power,
		challenge : b_against,
		first_hit : f_strike,
		rank : eli,
	}
	global._attack_origin = self;
	instance_create_layer(x, y, "UI_3", obj_player_attack_hitbox, details);
	_deathCheck = true;
}

function pilotSwap_A(_p)
{
	switch(_p) {
	case obj_reserve_1_token:
		global._pilot_1_active = false;
		global._pilot_1_ready = false;
		global._pilot_1_wait = 8 - global._wait_decrease;
	break;
	case obj_reserve_2_token:
		global._pilot_2_active = false;
		global._pilot_2_ready = false;
		global._pilot_2_wait = 8 - global._wait_decrease;
	break;
	case obj_reserve_3_token:
		global._pilot_3_active = false;
		global._pilot_3_ready = false;
		global._pilot_3_wait = 8 - global._wait_decrease;
	break;
	case obj_reserve_4_token:
		global._pilot_4_active = false;
		global._pilot_4_ready = false;
		global._pilot_4_wait = 8 - global._wait_decrease;
	break;
	case obj_elite_1_token:
		global._elite_1_active = false;
		if global._revives == 0 {
			global._elite_1_alive = false;
		}
		else {
			global._elite_1_active = true;
		}
	break;
	case obj_elite_2_token:
		global._elite_2_active = false;
		if global._revives == 0 {
			global._elite_2_alive = false;
		}
		else {
			global._elite_2_active = true;
		}
	break;
	case obj_elite_3_token:
		global._elite_3_active = false;
		if global._revives == 0 {
			global._elite_3_alive = false;
		}
		else {
			global._elite_3_active = true;
		}
	break;
}
}

function pilotSwap_B(_p)
{
	switch(_p) {
	case obj_reserve_1_token:
		global._pilot_1_active = false;
		global._pilot_1_ready = false;
		global._pilot_1_wait = 8 - global._wait_decrease;
	break;
	case obj_reserve_2_token:
		global._pilot_2_active = false;
		global._pilot_2_ready = false;
		global._pilot_2_wait = 8 - global._wait_decrease;
	break;
	case obj_reserve_3_token:
		global._pilot_3_active = false;
		global._pilot_3_ready = false;
		global._pilot_3_wait = 8 - global._wait_decrease;
	break;
	case obj_reserve_4_token:
		global._pilot_4_active = false;
		global._pilot_4_ready = false;
		global._pilot_4_wait = 8 - global._wait_decrease;
	break;
	case obj_elite_1_token:
		global._elite_1_active = true;
	break;
	case obj_elite_2_token:
		global._elite_2_active = true;
	break;
	case obj_elite_3_token:
		global._elite_3_active = true;
	break;
	}
}

function fullDirectionalCheck() //massive
{
	if keyboard_check(vk_shift) == false {
switch(_id) {
	case "Darter":
		directions =
		{
		up : 2,
		down : 0,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Model X":
		directions =
		{	
		up : 2,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Snowfox":
		directions =
		{
		up : 1,
		down : 0,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Missile Hawk":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Scorpion":
		directions =
		{	
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Black Eye":
		directions =
		{	
		up : 2,
		down : 0,
		right : 0,
		left : 0,
		up_r : 2,
		up_l : 2,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Shellzerker":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Bomb Bell":
		directions =
		{	
		up : 2,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Spider":
		directions =
		{	
		up : 0,
		down : 0,
		right : 2,
		left : 2,
		up_r : 2,
		up_l : 2,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Slugger":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Airstriker":
		directions =
		{	
		up : 2,
		down : 0,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 2,
		down_l : 2,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Powl-2":
		directions =
		{	
		up : 2,
		down : 0,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Old V500":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "1st Class Model":
		directions =
		{	
		up : 2,
		down : 1,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Model V":
		directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Model W":
		directions =
		{	
		up : 1,
		down : 0,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Classic Stardrake":
		directions =
		{	
		up : 2,
		down : 2,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Nebular Cruiser":
		directions =
		{	
		up : 2,
		down : 2,
		right : 0,
		left : 0,
		up_r : 2,
		up_l : 2,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Version .3":
		directions =
		{	
		up : 1,
		down : 0,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Version .7":
		directions =
		{	
		up : 1,
		down : 0,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Version .11":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 2,
		up_l : 2,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "G100 Wasp":
		directions =
		{	
		up : 1,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "G250 Wasp":
		directions =
		{	
		up : 2,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Celestial Slug":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Plasma Moth T21":
		directions =
		{	
		up : 1,
		down : 1,
		right : 0,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Plasma Moth T25":
		directions =
		{	
		up : 1,
		down : 1,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Fireball":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Hyper-77 V.":
		directions =
		{	
		up : 2,
		down : 0,
		right : 2,
		left : 2,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Twister-52 V.":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 2,
		up_l : 2,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Mystic MK1":
		directions =
		{	
		up : 1,
		down : 1,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Mystic MK2":
		directions =
		{	
		up : 2,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Solar Guardian":
		directions =
		{	
		up : 1,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Titan 57":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Night Shredder":
		directions =
		{	
		up : 2,
		down : 0,
		right : 2,
		left : 2,
		up_r : 2,
		up_l : 2,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Void Reaper":
		directions =
		{	
		up : 0,
		down : 0,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Draconian Falcon":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Specter":
		directions =
		{	
		up : 1,
		down : 0,
		right : 2,
		left : 2,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Banshee":
		directions =
		{	
		up : 2,
		down : 0,
		right : 0,
		left : 0,
		up_r : 2,
		up_l : 2,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	case "Fury-400 Striker":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 2,
		up_l : 2,
		down_r : 2,
		down_l : 2,
		}
		global._ship_moving = self;
		_move_cost = 2 + _freeze;
	break;
	}
}
if keyboard_check(vk_shift) {
	//will allow for shorter distance movemement with ships that move greater distances
	switch(_id) {
	case "Darter":
		directions =
		{
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Model X":
		directions =
		{	
		up : 1,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Black Eye":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Bomb Bell":
		directions =
		{	
		up : 1,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Spider":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Airstriker":
		directions =
		{	
		up : 1,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Powl-2":
		directions =
		{	
		up : 1,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "1st Class Model":
		directions =
		{	
		up : 1,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Classic Stardrake":
		directions =
		{	
		up : 1,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Nebular Cruiser":
		directions =
		{	
		up : 1,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Version .7":
		directions =
		{	
		up : 0,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Version .11":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "G250 Wasp":
		directions =
		{	
		up : 0,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Hyper-77 V.":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Twister-52 V.":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Mystic MK1":
		directions =
		{	
		up : 0,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Mystic MK2":
		directions =
		{	
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Night Shredder":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Draconian Falcon":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Specter":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Banshee":
		directions =
		{	
		up : 1,
		down : 1,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	case "Fury-400 Striker":
		directions =
		{	
		up : 1,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		global._ship_moving = self;
		_move_cost = 1 + _freeze;
	break;
	}
}
}
