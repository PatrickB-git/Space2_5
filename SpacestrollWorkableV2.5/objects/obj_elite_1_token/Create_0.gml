_my_behavior = "";
_my_identity = global._elite_1_id;
_micros = false;
_unselectable = false;
switch(_my_identity) {
	case "Vivia": //female [stem]
	sprite_index = spr_pilot_background_PomPom;
	_my_behavior = "Loud";
	break;
	case "Daisy": //female [flowers]
	sprite_index = spr_pilot_background_PomPom;
	_my_behavior = "Cynical";
	break;
	case "Pei": //female [roots]
	sprite_index = spr_pilot_background_PomPom;
	_my_behavior = "Stubborn";
	break;
	case "Zyntax": //male [smart bug]
	sprite_index = spr_pilot_background_Zartar;
	_my_behavior = "Competitve";
	break;
	case "Nompile": //male [glutton bug]
	sprite_index = spr_pilot_background_Zartar;
	_my_behavior = "Vengeful";
	break;
	case "Tache": //female [love bug]
	sprite_index = spr_pilot_background_Zartar;
	_my_behavior = "Brash";
	break;
	case "Izzy": //male [fizzy]
	sprite_index = spr_pilot_background_Slink;
	_my_behavior = "Quiet";
	break;
	case "Miru": //female [Me-you]
	sprite_index = spr_pilot_background_Slink;
	_my_behavior = "Anxious";
	break;
	case "Otto": //male [Otto]
	sprite_index = spr_pilot_background_Slink;
	_my_behavior = "Casual";
	break;
	case "Nyxian": //female [night]
	sprite_index = spr_pilot_background_Fiend;
	_my_behavior = "Crude";
	break;
	case "Heldred": //male [hell born]
	sprite_index = spr_pilot_background_Fiend;
	_my_behavior = "Thrillseeking";
	break;
	case "Darth": //male [darkness]
	sprite_index = spr_pilot_background_Fiend;
	_my_behavior = "Detached";
	break;
	case "Truesting": //female [honest pain]
	sprite_index = spr_pilot_background_Venom;
	_my_behavior = "Serious";
	break;
	case "Highwire": //male  [high voltage / living spark]
	sprite_index = spr_pilot_background_Venom;
	_my_behavior = "Cautious";
	break;
	case "Thunderfall": //female [thunder clap]
	sprite_index = spr_pilot_background_Venom;
	_my_behavior = "Prideful";
	break;
	case "Lemias": //male [the patient]
	sprite_index = spr_pilot_background_Quartzskin;
	_my_behavior = "Patient";
	break;
	case "Toudus": //male [weak willed]
	sprite_index = spr_pilot_background_Quartzskin;
	_my_behavior = "Soft";
	break;
	case "Emirat": //male [folk hero]
	sprite_index = spr_pilot_background_Quartzskin;
	_my_behavior = "Calm";
	break;
	case "Thurma": //female [wise name]
	sprite_index = spr_pilot_background_Iguanasuarus;
	_my_behavior = "Motivated";
	break;
	case "Asaethis": //male [royal name]
	sprite_index = spr_pilot_background_Iguanasuarus;
	_my_behavior = "Humble";
	break;
	case "Cruzhmak": //male [flashy name]
	sprite_index = spr_pilot_background_Iguanasuarus;
	_my_behavior = "Energetic";
	break;
	case "Raltalio": //male [Brave Mouse]
	sprite_index = spr_pilot_background_BlueBoom;
	_my_behavior = "Brave";
	break;
	case "Evemee": //female [Curious Cat]
	sprite_index = spr_pilot_background_BlueBoom;
	_my_behavior = "Curious";
	break;
	case "Xeltama": //female [Protective Dog]
	sprite_index = spr_pilot_background_BlueBoom;
	_my_behavior = "Protective";
	break;
	case "Parriff": //female [Parrot]
	sprite_index = spr_pilot_background_Avianx;
	_my_behavior = "Joyous";
	break;
	case "Secrace": //male [Phoenix / Bird of Fire]
	sprite_index = spr_pilot_background_Avianx;
	_my_behavior = "Passionate";
	break;
	case "Phezsanete": //female [Pheasant / Chicken]
	sprite_index = spr_pilot_background_Avianx;
	_my_behavior = "Whimsical";
	break;
	case "Whale": //male [Whale]
	sprite_index = spr_pilot_background_Hammerhead;
	_my_behavior = "Rude";
	break;
	case "Tiger": //male [Tiger]
	sprite_index = spr_pilot_background_Hammerhead;
	_my_behavior = "Vicious";
	break;
	case "Cookie": //female [Cookie]
	sprite_index = spr_pilot_background_Hammerhead;
	_my_behavior = "Lazy";
	break;
	case "Andrew": //male [Common Name]
	sprite_index = spr_pilot_background_Angel;
	_my_behavior = "Inquisitive";
	break;
	case "Natalie": //female [Common Name]
	sprite_index = spr_pilot_background_Angel;
	_my_behavior = "Focused";
	break;
	case "Jerome": //male [Common Name]
	sprite_index = spr_pilot_background_Angel;
	_my_behavior = "Insane"; 
	break;
}
	
switch(_my_behavior) {
	case "Energetic":
		_pilot_bonus = 2;
	break;
	case "Competitive":
		_pilot_bonus = 2;
	break;
	case "Cautious":
		_pilot_bonus = 2;
	break;
	case "Loud":
		_pilot_bonus = 2;
	break;
	case "Passionate":
		_pilot_bonus = 2;
	break;
	case "Quiet":
		_pilot_bonus = 2;
	break;
	case "Brash":
		_pilot_bonus = 2;
	break;
	case "Curious":
		_pilot_bonus = 2;
	break;
	case "Focused":
		_pilot_bonus = 2;
	break;
	case "Thrillseeking":
		_pilot_bonus = 2;
	break;
	case "Brave":
		_pilot_bonus = 2;
	break;
	case "Casual":
		_pilot_bonus = 2;
	break;
	case "Calm":
		_pilot_bonus = 2;
	break;
	case "Rude":
		_pilot_bonus = 2;
	break;
	case "Whimsical":
		_pilot_bonus = 2;
	break;
	case "Anxious":
		_pilot_bonus = 2;
	break;
	case "Joyous":
		_pilot_bonus = 2;
	break;
	case "Lazy":
		_pilot_bonus = 2;
	break;
	case "Inquitsitive":
		_pilot_bonus = 4;
	break;
	case "Soft":
		_pilot_bonus = 3;
	break;
	case "Detached":
		_pilot_bonus = 4;
	break;
	case "Patient":
		_pilot_bonus = 2;
	break;
	case "Protective":
		_pilot_bonus = 2;
	break;
	case "Prideful":
		_pilot_bonus = 3;
	break;
	case "Cynical":
		_pilot_bonus = 2;
	break;
	case "Motivated":
		_pilot_bonus = 2;
	break;
	case "Stubborn":
		_pilot_bonus = 4;
	break;
	case "Serious":
		_pilot_bonus = 3;
	break;
	case "Vengeful":
		_pilot_bonus = 4;
	break;
	case "Crude":
		_pilot_bonus = 2;
	break;
	case "Vicious":
		_pilot_bonus = 2;
	break;
	case "Humble":
		_pilot_bonus = 3;
	break;
}
	
instance_create_layer(x, y, "UI_3", obj_elite_1_selectability);