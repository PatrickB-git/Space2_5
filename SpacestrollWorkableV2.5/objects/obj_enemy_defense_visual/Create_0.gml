_type = type;
_icon = icon;

switch(_type) {
	case "Evasion":
		//should look like transparent copies of original ship phasing in, then out {spr}
		sprite_index = spr_evasion_defense;
	break;
	case "Decoys":
		//should look like almost opaque copies fo original ship being launched out like deflectors {spr}
		sprite_index = spr_decoy_defense;
	break;
	case "Energy Shield":
		//should look like a blue, transparent bubble sorrounding the original ship, with linear patterns [spr
		sprite_index = spr_e_shield_defense;
	break;
	case "Absorbtion Plates":
		//should appear as though ~4 parts of a circle close in on the original ship [spr]
		sprite_index = spr_a_plates_defense;
	break;
	case "Plasma Wall":
		//should look like a pink/red, somewhat opaque non-round barrier sorrounding the original ship, with wavey patterns [spr]
		sprite_index = spr_p_wall_defense;
	break;
	case "Deflectors":
		//should look like small barriers (around 3) of energy are launched out from the original ship [spr]
		sprite_index = spr_deflectors_defense;
	break;
	case "Armor":
		//should appear as though a transparent grey shield blooms from the center of the original ship [spr]
		sprite_index = spr_armor_defense;
	break;
	case "Chemical Barrier":
		//should appear as though the entire original ship is covered in some greenish-blue 'fluid' [spr]
		sprite_index = spr_c_barrier_defense;
	break;
}

show_debug_message("Defense Activated");
