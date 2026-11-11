function SpawnEnemy(ID, atk, def, hp, atk_t, def_t, plt, act, rgn, val)
{
	stats =
		{
		identity : ID,
		attack : atk,
		defense : def,
		health_points : hp,
		attack_type : atk_t,
		defense_type : def_t,
		pilot : plt,
		max_actions : act,
		regen : rgn,
		value : val,
		}
	instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
}

function MoveCheck_A(_move_x, _move_y, s, m)
{
	if m == true {
		s = 15;
		move_towards_point(_move_x, _move_y, s);
	}
	if m == true and distance_to_point(_move_x, _move_y) < 1 {
		x = _move_x
		y = _move_y
		s = 0;
		m = false;
		}
	if _release == true and distance_to_point(_move_x, _move_y) <= 12 {
		show_debug_message("Enemy " + string(global._turn_now) + ": End Move");
		s = 0;
		x = _move_x;
		y = _move_y;
		move_towards_point(x, y, s);
		_release = false;
	}
}

function MoveCheck_B(direct, x_shift, y_shift, my_x, my_y)
{
	show_debug_message(my_x);
	if direct > 0 {
		if x_shift == 100 {
			if ((my_x + (direct * x_shift)) > 700)
			{
				show_debug_message("too far right");
				return 0
			}
		}
		else if x_shift == -100 {
			if ((my_x - (direct * x_shift)) < 200)
			{
				show_debug_message("too far left");
				return 0
			}
		}
		
		if y_shift == 100 {
			if ((my_y + (direct * y_shift)) > 850)
			{
				show_debug_message("too far down");
				return 0
			}
		}
		else if y_shift == -100 {
			if ((my_y - (direct * y_shift)) < 78)
			{
				show_debug_message("too far up");
				return 0
			}
		}
		if (collision_line(my_x, my_y, my_x + (direct * x_shift), my_y + (direct * y_shift), obj_enemy_ship, false, true) != noone) {
			show_debug_message("enemy ship blocking");
			return 0
		}
		if (collision_line(my_x, my_y, my_x + (direct * x_shift), my_y + (direct * y_shift), obj_player_ship, false, false) != noone) {
			show_debug_message("player ship blocking");
			return 0
		}
		_release = true;
		speed = 12;
		show_debug_message(direct * y_shift);
		_move_x = my_x + (direct * x_shift);
		_move_y = my_y + (direct * y_shift);
		show_debug_message(_move_x);
		show_debug_message(_move_y);
		cycle = 16;
		show_debug_message("move found");
	}	
}

function MoveCheck_C(direct, x_shift, y_shift, my_x, my_y)
{
	if direct > 0 {
		if x_shift == 100 {
			if ((my_x + (direct * x_shift)) > 700)
			{
				show_debug_message("too far right");
				return 0
			}
		}
		else if x_shift == -100 {
			if ((my_x + (direct * x_shift)) < 200)
			{
				show_debug_message("too far left");
				return 0
			}
		}
		if y_shift == 100 {
			if ((my_y + (direct * y_shift)) > 850)
			{
				show_debug_message("too far down");
				return 0
			}
		}
		else if y_shift == -100 {
			if ((my_y + (direct * y_shift)) < 78)
			{
				show_debug_message("too far up");
				return 0
			}
		}
		if (collision_line(my_x, my_y, my_x + (direct * x_shift), my_y + (direct * y_shift), obj_enemy_ship, false, true) != noone) {
			show_debug_message("enemy ship blocking");
			return 0
		}
		if (collision_line(my_x, my_y, my_x + (direct * x_shift), my_y + (direct * y_shift), obj_player_ship, false, false) != noone) {
			show_debug_message("player ship blocking");
			return 0
		}
		_release = true;
		speed = 12;
		show_debug_message(direct * y_shift);
		_move_x = my_x + (direct * x_shift);
		_move_y = my_y + (direct * y_shift);
		show_debug_message(_move_x);
		show_debug_message(_move_y);
		cycle = 16;
		show_debug_message("move found");
	}	
}

function ActionCheck()
{
	if _actions_taken == _max_actions and global._player_turn == false and global._turn_taken == false and ds_list_find_value(global._priority, global._turn_now) == self {
	show_debug_message("Enemy " + string(global._turn_now) + ": End Turn");
	alarm_set(0, 10);
	alarm_set(4, 5);
	_burn -= 1;
	_freeze -= 1;
	_actions_taken += 1;
	}
}

function PriorityCheck()
{
	if ds_list_find_value(global._priority, global._turn_now) == self and global._player_turn == false and global._turn_taken == false and _actCheck == false {
	show_debug_message("Enemy " + string(global._turn_now) + ": Start Turn");
	if _stun > 0 {
		_actions_taken += _stun;
		_stun = 0;
	}
	if _burn > 0 {
		_hp -= _burn;
	}
	_actCheck = true;
	if _hp <= 0 if _deathCheck == false {
		alarm_set(6, 1);
		_check_fire = true;
		_deathCheck = true;
	}
	}
}

function enemyDirections(ID)
{
	switch(ID) {
	case "Darter":
		directions =
		{
		up : 0,
		down : 2,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		alt_directions =
		{
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Model X":
		directions =
		{	
		up : 0,
		down : 2,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		alt_directions =
		{
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_mosquito_x_ship;
	break;
	case "Snowfox":
		directions =
		{
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		sprite_index = spr_snowfox_ship;
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
		sprite_index = spr_missile_hawk_ship;
	break;
	case "Scorpion":
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
		sprite_index = spr_scorpion_ship;
	break;
	case "Black Eye":
		directions =
		{	
		up : 0,
		down : 2,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 2,
		down_l : 2,
		}
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_black_eye_ship;
	break;
	case "Shellzerker":
		directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_shellzerker_ship;
	break;
	case "Bomb Bell":
		directions =
		{	
		up : 0,
		down : 2,
		right : 1,
		left : 1,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		alt_directions =
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
		sprite_index = spr_bomb_bell_ship;
	break;
	case "Spider":
		directions =
		{	
		up : 0,
		down : 0,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 2,
		down_l : 2,
		}
		alt_directions =
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
		sprite_index = spr_darter_ship;
	break;
	case "Slugger":
		directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Airstriker":
		directions =
		{	
		up : 0,
		down : 2,
		right : 0,
		left : 0,
		up_r : 2,
		up_l : 2,
		down_r : 1,
		down_l : 1,
		}
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Powl-2":
		directions =
		{	
		up : 0,
		down : 2,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Old V500":
		directions =
		{	
		up : 0,
		down : 2,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "1st Class Model":
		directions =
		{	
		up : 1,
		down : 2,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Model V":
		directions =
		{	
		up : 1,
		down : 0,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Model W":
		directions =
		{	
		up : 0,
		down : 1,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 1,
		down_l : 1,
		}
		sprite_index = spr_mosquito_w_ship;
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
		alt_directions =
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
		sprite_index = spr_stardrake_ship;
	break;
	case "Nebular Cruiser":
		directions =
		{	
		up : 2,
		down : 2,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 2,
		down_l : 2,
		}
		alt_directions =
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
		sprite_index = spr_nebular_cruiser_ship;
	break;
	case "Version .3":
		directions =
		{	
		up : 0,
		down : 1,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Version .7":
		directions =
		{	
		up : 0,
		down : 1,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		alt_directions =
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
		sprite_index = spr_darter_ship;
	break;
	case "Version .11":
		directions =
		{	
		up : 0,
		down : 0,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 2,
		down_l : 2,
		}
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "G100 Wasp":
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
		sprite_index = spr_darter_ship;
	break;
	case "G250 Wasp":
		directions =
		{	
		up : 0,
		down : 2,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 0,
		down_l : 0,
		}
		alt_directions =
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
		sprite_index = spr_darter_ship;
	break;
	case "Celestial Slug":
		directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
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
		sprite_index = spr_darter_ship;
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
		sprite_index = spr_darter_ship;
	break;
	case "Fireball":
		directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Hyper-77 V.":
		directions =
		{	
		up : 0,
		down : 2,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Twister-52 V.":
		directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 2,
		down_l : 2,
		}
		alt_directions =
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
		sprite_index = spr_darter_ship;
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
		alt_directions =
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
		sprite_index = spr_darter_ship;
	break;
	case "Mystic MK2":
		directions =
		{	
		up : 0,
		down : 2,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		alt_directions =
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
		sprite_index = spr_darter_ship;
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
		sprite_index = spr_darter_ship;
	break;
	case "Titan 57":
		directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Night Shredder":
		directions =
		{	
		up : 0,
		down : 2,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 2,
		down_l : 2,
		}
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		sprite_index = spr_darter_ship;
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
		sprite_index = spr_darter_ship;
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
		alt_directions =
		{	
		up : 0,
		down : 1,
		right : 1,
		left : 1,
		up_r : 0,
		up_l : 0,
		down_r : 0,
		down_l : 0,
		}
		sprite_index = spr_darter_ship;
	break;
	case "Specter":
		directions =
		{	
		up : 0,
		down : 1,
		right : 2,
		left : 2,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		alt_directions =
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
		sprite_index = spr_darter_ship;
	break;
	case "Banshee":
		directions =
		{	
		up : 0,
		down : 2,
		right : 0,
		left : 0,
		up_r : 1,
		up_l : 1,
		down_r : 2,
		down_l : 2,
		}
		alt_directions =
		{	
		up : 1,
		down : 1,
		right : 0,
		left : 0,
		up_r : 0,
		up_l : 0,
		down_r : 1,
		down_l : 1,
		}
		sprite_index = spr_darter_ship;
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
		alt_directions =
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
		sprite_index = spr_darter_ship;
	break;
	}
}

function e_AttackCheck(atk_type, atk, ID)
{
	details =
	{
	type : atk_type,
	strength : atk,
	identity : ID,
	}
	global._can_fire = false;
	global._attack_origin = self;
	instance_create_layer(x, y, "UI_3", obj_enemy_attack_hitbox, details);
	alarm_set(2, 10);
}