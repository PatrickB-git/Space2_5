_this_ship = "";
_micros = false;
_ship_cost = 0;

switch(a) {
	case 8.5:
	sprite_index = spr_darter_token;
	_this_ship = "darter";
	_ship_cost = 8;
	break;
	case 9:
	sprite_index = spr_darter_token;
	_this_ship = "powl-2";
	_ship_cost = 9;
	break;
	case 9.5:
	sprite_index = spr_black_eye_ship;
	_this_ship = "black eye";
	_ship_cost = 9;
	break;
	case 11.5:
	sprite_index = spr_darter_token;
	_this_ship = "old v500";
	_ship_cost = 11;
	break;
	case 12:
	sprite_index = spr_mosquito_x_token;
	_this_ship = "model x";
	_ship_cost = 12;
	break;
	case 12.5:
	sprite_index = spr_darter_token;
	_this_ship = "1st class";
	_ship_cost = 0;
	break;
	case 13:
	sprite_index = spr_missile_hawk_ship;
	_this_ship = "hawk";
	_ship_cost = 13;
	break;
	case 14:
	sprite_index = spr_darter_token;
	_this_ship = "model v";
	_ship_cost = 0;
	break;
	case 14.5:
	sprite_index = spr_darter_token;
	_this_ship = "g100 wasp";
	_ship_cost = 0;
	break;
	case 15:
	sprite_index = spr_stardrake_ship;
	_this_ship = "classic stardrake";
	_ship_cost = 15;
	break;
	case 15.1:
	sprite_index = spr_shellzerker_ship;
	_this_ship = "shellzerker";
	_ship_cost = 15;
	break;
	case 15.3:
	sprite_index = spr_snowfox_token;
	_this_ship = "snowfox";
	_ship_cost = 15;
	break;
	case 15.5:
	sprite_index = spr_darter_token;
	_this_ship = "spider";
	_ship_cost = 0;
	break;
	case 15.7:
	sprite_index = spr_darter_token;
	_this_ship = "slugger";
	_ship_cost = 0;
	break;
	case 16:
	sprite_index = spr_bomb_bell_ship;
	_this_ship = "bomb-bell";
	_ship_cost = 16;
	break;
	case 16.5:
	sprite_index = spr_mosquito_w_ship;
	_this_ship = "model w";
	_ship_cost = 16;
	break;
	case 17:
	sprite_index = spr_darter_token;
	_this_ship = "g250 wasp";
	_ship_cost = 0;
	break;
	case 17.5:
	sprite_index = spr_scorpion_ship;
	_this_ship = "scorpion";
	_ship_cost = 17;
	break;
	case 18:
	sprite_index = spr_darter_token;
	_this_ship = "cyclopes .3";
	_ship_cost = 0;
	break;
	case 20:
	sprite_index = spr_darter_token;
	_this_ship = "airstriker";
	_ship_cost = 0;
	break;
	case 20.5:
	sprite_index = spr_nebular_cruiser_ship;
	_this_ship = "nebular cruiser";
	_ship_cost = 20;
	break;
	case 21:
	sprite_index = spr_darter_token;
	_this_ship = "cyclopes .7";
	_ship_cost = 0;
	break;
	case 23:
	sprite_index = spr_darter_token;
	_this_ship = "cyclopes .11";
	_ship_cost = 0;
	break;
	case 25:
	sprite_index = spr_darter_token;
	_this_ship = "celstial slug";
	_ship_cost = 0;
	break;
	case 27:
	sprite_index = spr_darter_token;
	_this_ship = "mystic mk1";
	_ship_cost = 0;
	break;
	case 27.5:
	sprite_index = spr_darter_token;
	_this_ship = "banshee";
	_ship_cost = 0;
	break;
	case 28.1:
	sprite_index = spr_darter_token;
	_this_ship = "specter";
	_ship_cost = 0;
	break;
	case 28.3:
	sprite_index = spr_darter_token;
	_this_ship = "reaper";
	_ship_cost = 0;
	break;
	case 28.5:
	sprite_index = spr_darter_token;
	_this_ship = "plasma t21";
	_ship_cost = 0;
	break;
	case 28.7:
	sprite_index = spr_darter_token;
	_this_ship = "fireball";
	_ship_cost = 0;
	break;
	case 30:
	sprite_index = spr_darter_token;
	_this_ship = "falcon";
	_ship_cost = 0;
	break;
	case 31:
	sprite_index = spr_darter_token;
	_this_ship = "hyper-77";
	_ship_cost = 0;
	break;
	case 31.5:
	sprite_index = spr_darter_token;
	_this_ship = "twister-52";
	_ship_cost = 0;
	break;
	case 32:
	sprite_index = spr_darter_token;
	_this_ship = "shredder";
	_ship_cost = 0;
	break;
	case 32.5:
	sprite_index = spr_darter_token;
	_this_ship = "juggernaut";
	_ship_cost = 0;
	break;
	case 33:
	sprite_index = spr_darter_token;
	_this_ship = "titan";
	_ship_cost = 0;
	break;
	case 33.25:
	sprite_index = spr_darter_token;
	_this_ship = "plasma t25";
	_ship_cost = 0;
	break;
	case 33.5:
	sprite_index = spr_darter_token;
	_this_ship = "mystic mk2";
	_ship_cost = 0;
	break;
	case 33.75:
	sprite_index = spr_darter_token;
	_this_ship = "guardian";
	_ship_cost = 0;
	break;
	case 35:
	sprite_index = spr_darter_token;
	_this_ship = "fury-400";
	_ship_cost = 0;
	break;
}

value =
{
	cost : _ship_cost,
}

instance_create_layer(x, y, "UI_3", obj_value_tracker, value);