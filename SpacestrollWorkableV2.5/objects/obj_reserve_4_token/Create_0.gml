_behavior_list = ["Energetic", "Competitive", "Cautious", "Loud", "Passionate", "Quiet", "Brash", "Curious", "Focused", "Thrillseeking", "Brave", "Casual", "Calm", "Rude", "Whimsical", "Anxious", "Joyous", "Lazy", "Inquisitive", "Soft", "Detached", "Patient", "Protective", "Prideful", "Cynical", "Motivated", "Stubborn", "Serious", "Vengeful", "Crude", "Vicious", "Humble"];
_identity_list = ["PomPom", "Zartar", "Slink", "Fiend", "Venom", "Quartzskin", "Iguanasaurus", "BlueBoom", "Avianx", "Hammerhead", "Angel"];
_micros = false;
_my_behavior = array_first(array_shuffle(_behavior_list, 0, 32));
_my_identity = array_first(array_shuffle(_identity_list, 0, 11));
_unselectable = false;
_vex = false;
switch(_my_identity) {
	case "PomPom":
	sprite_index = spr_pilot_background_PomPom;
	break;
	case "Zartar":
	sprite_index = spr_pilot_background_Zartar;
	break;
	case "Slink":
	sprite_index = spr_pilot_background_Slink;
	break;
	case "Fiend":
	sprite_index = spr_pilot_background_Fiend;
	break;
	case "Venom":
	sprite_index = spr_pilot_background_Venom;
	break;
	case "Quartzskin":
	sprite_index = spr_pilot_background_Quartzskin;
	break;
	case "Iguanasaurus":
	sprite_index = spr_pilot_background_Iguanasuarus;
	break;
	case "BlueBoom":
	sprite_index = spr_pilot_background_BlueBoom;
	break;
	case "Avianx":
	sprite_index = spr_pilot_background_Avianx;
	break;
	case "Hammerhead":
	sprite_index = spr_pilot_background_Hammerhead;
	break;
	case "Angel":
	sprite_index = spr_pilot_background_Angel;
	break;
}
	
switch(_my_behavior) {
	case "Energetic":
		_pilot_bonus = 1;
	break;
	case "Competitive":
		_pilot_bonus = 1;
	break;
	case "Cautious":
		_pilot_bonus = 1;
	break;
	case "Loud":
		_pilot_bonus = 1;
	break;
	case "Passionate":
		_pilot_bonus = 1;
	break;
	case "Quiet":
		_pilot_bonus = 1;
	break;
	case "Brash":
		_pilot_bonus = 1;
	break;
	case "Curious":
		_pilot_bonus = 1;
	break;
	case "Focused":
		_pilot_bonus = 1;
	break;
	case "Thrillseeking":
		_pilot_bonus = 1;
	break;
	case "Brave":
		_pilot_bonus = 1;
	break;
	case "Casual":
		_pilot_bonus = 1;
	break;
	case "Calm":
		_pilot_bonus = 1;
	break;
	case "Rude":
		_pilot_bonus = 1;
	break;
	case "Whimsical":
		_pilot_bonus = 1;
	break;
	case "Anxious":
		_pilot_bonus = 1;
	break;
	case "Joyous":
		_pilot_bonus = 1;
	break;
	case "Lazy":
		_pilot_bonus = 1;
	break;
	case "Inquitsitive":
		_pilot_bonus = 3;
	break;
	case "Soft":
		_pilot_bonus = 2;
	break;
	case "Detached":
		_pilot_bonus = 3;
	break;
	case "Patient":
		_pilot_bonus = 1;
	break;
	case "Protective":
		_pilot_bonus = 1;
	break;
	case "Prideful":
		_pilot_bonus = 2;
	break;
	case "Cynical":
		_pilot_bonus = 1;
	break;
	case "Motivated":
		_pilot_bonus = 1;
	break;
	case "Stubborn":
		_pilot_bonus = 3;
	break;
	case "Serious":
		_pilot_bonus = 2;
	break;
	case "Vengeful":
		_pilot_bonus = 3;
	break;
	case "Crude":
		_pilot_bonus = 1;
	break;
	case "Vicious":
		_pilot_bonus = 1;
	break;
	case "Humble":
		_pilot_bonus = 2;
	break;
}
	
instance_create_layer(x, y, "UI_3", obj_reserve_4_selectability);