_id = identity;
_attack = attack;
_max_attack = attack;
_defense = defense;
_max_defense = defense;
_hp = health_points + global._fleet_health;
_max_hp = health_points + global._fleet_health;
_attack_type = attack_type;
_defense_type = defense_type;
_pilot = pilot;
_slot = slot;
_actions_taken = 0;
_max_actions = max_actions;
_attack_cost = attack_cost;
_power = value;
_wait = wait;
_my_pilot = self;
_first_attack = true;
_elite = false;
global._fair_start = false;

global._active_player_ships += 1;
_attack_distance = 350;
_move_cost = 0;
_defense_regen = regen;
switch(_slot) {
	case obj_slot_1_token:
		obj_ship_slot_control._slot1 = 0;
	break;
	case obj_slot_2_token:
		obj_ship_slot_control._slot2 = 0;
	break;
	case obj_slot_3_token:
		obj_ship_slot_control._slot3 = 0;
	break;
}

switch(global._pilot_selected) {
	case 1:
		global._pilot_1_active = true;
		_my_pilot = obj_reserve_1_token;
	break;
	case 2:
		global._pilot_2_active = true;
		_my_pilot = obj_reserve_2_token;
	break;
	case 3:
		global._pilot_3_active = true;
		_my_pilot = obj_reserve_3_token;
	break;
	case 4:
		global._pilot_4_active = true;
		_my_pilot = obj_reserve_4_token;
	break;
	case 7:
		global._elite_1_active = true;
		_my_pilot = obj_elite_1_token;
		_max_hp += 2 + global._elite_pilot_hp;
		_hp += 2 + global._elite_pilot_hp;
		_attack += global._elite_pilot_atk;
		_max_attack += global._elite_pilot_atk;
		_defense += global._elite_pilot_def;
		_max_defense += global._elite_pilot_def;
		_actions_taken = global._elite_start_actions;
		_elite = true;
	break;
	case 8:
		global._elite_2_active = true;
		_my_pilot = obj_elite_1_token;
		_max_hp += 2 + global._elite_pilot_hp;
		_hp += 2 + global._elite_pilot_hp;
		_attack += global._elite_pilot_atk;
		_max_attack += global._elite_pilot_atk;
		_defense += global._elite_pilot_def;
		_max_defense += global._elite_pilot_def;
		_actions_taken = global._elite_start_actions;
		_elite = true;
	break;
	case 9:
		global._elite_3_active = true;
		_my_pilot = obj_elite_1_token;
		_max_hp += 2 + global._elite_pilot_hp;
		_hp += 2 + global._elite_pilot_hp;
		_attack += global._elite_pilot_atk;
		_max_attack += global._elite_pilot_atk;
		_defense += global._elite_pilot_def;
		_max_defense += global._elite_pilot_def;
		_actions_taken = global._elite_start_actions;
		_elite = true;
	break;
}
//pilots may now only be selected once. Program pilot cycling upon death or score later
//program perma-death for elite pilots and add increased health points for a ship when-
//-using an elite pilot

global._hangar_wait = _wait;

global._pilot_selected = obj_player_ship_spawn;
global._ship_selected = obj_player_ship_spawn;
global._spawning = "";
global._placing_ship = false;
speed = 0;

if global._first_ship_played == true {
	_attack += global._first_ship_atk;
	_max_attack += global._first_ship_atk;
	_defense += global._first_ship_def;
	_max_defense += global._first_ship_def;
	_hp += global._first_ship_hp;
	_max_hp += global._first_ship_hp;
	_max_actions += global._first_ship_max_a;
	if global._lite_twist == true {
		_temp_atk = _attack;
		_temp_def = _defense;
		_attack = _temp_def;
		_defense = _temp_atk;
		_max_attack = _temp_def;
		_max_defense = _temp_atk;
	}
if global._big_twist == true {
	if irandom_range(1, 2) == 1 {
			_attack *= 2;
			_max_attack = _attack;
			_defense = round(_defense / 3);
			_max_defense = _defense;
		}
		else {
			_attack = round(_attack / 3);
			_max_attack = _attack;
			_defense *= 2;
			_max_defense = _defense;
		}
	}
	global._first_ship_played = false;
}

directions =
{	
	up : 0,
	down : 0,
	right : 0,
	left : 0,
	up_r : 0,
	up_l : 0,
	down_r : 0,
	down_l : 0,
}
_release = false;
_deathCheck = true;
alarm_set(0, 15);
_long_move = false;
_moving = false;
_check_fire = false;

_stun = 0;
_burn = 0;
_freeze = 0;
_corrode = 0;
_drop = false;
_range = 350;

switch(_id) {
	case "Darter":
		sprite_index = spr_darter_ship;
	break;
	case "Model X":
		sprite_index = spr_mosquito_x_ship;
	break;
	case "Snowfox":
		sprite_index = spr_snowfox_ship;
	break;
	case "Black Eye":
		sprite_index = spr_black_eye_ship;
	break;
	case "Missile Hawk":
		sprite_index = spr_missile_hawk_ship;
	break;
	case "Classic Stardrake":
		sprite_index = spr_stardrake_ship;
	break;
	case "Nebular Cruiser":
		sprite_index = spr_nebular_cruiser_ship;
	break;
	case "Model W":
		sprite_index = spr_mosquito_w_ship;
	break;
	case "Scorpion":
		sprite_index = spr_scorpion_ship;
	break;
	case "Shellzerker":
		sprite_index = spr_shellzerker_ship;
	break;
	case "Bomb-Bell":
		sprite_index = spr_bomb_bell_ship;
	break;
}

_pilot_bonus = _my_pilot._my_behavior;
_bonus_power = 0;
_bonus_against = "";

PilotBonus(_pilot_bonus);

details =
{
	type : _attack_type,
	strength : _attack,
	identity : _id,
	cost : _attack_cost,
	pilot_bonus : _pilot_bonus,
	empower : _bonus_power,
	challenge : _bonus_against,
}

info =
{
	range : _range,
	atk_type : _attack_type,
}
