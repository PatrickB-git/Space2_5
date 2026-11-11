_type = atk_type;
_has_shot = false;

switch(_type) {
	case "Lasers":
		sprite_index = spr_laser_attack;
	break;
	case "Missiles":
		//fires seeking missiles
		sprite_index = spr_missile_attack;
	break;
	case "Beams":
		//runs beam animation
		sprite_index = spr_beam_attack;
	break;
	case "Jolts":
		sprite_index = spr_jolt_attack;
	break;
	case "Blazes":
		//fires blaze
		sprite_index = spr_blazes_attack;
	break;
	case "Frost":
		//fires ice blade
		sprite_index = spr_frost_attack;
	break;
	case "Ram":
		//creates rushing effect around ship
		sprite_index = spr_ram_attack;
	break;
	case "Acid":
		sprite_index = spr_acid_attack;
	break;
}

if _type == "Beams" {
	show_debug_message("LOOG");
	alarm_set(1, 35);
	_has_shot = true;
}

show_debug_message("Attack Activated");