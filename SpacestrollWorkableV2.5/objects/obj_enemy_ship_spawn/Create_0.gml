stats =
	{
	identity : "",
	attack : 0,
	defense : 0,
	health_points : 0,
	attack_type : "",
	defense_type : "",
	pilot : global._enemy_pilot,
	max_actions : 1,
	regen : 0,
	value : 0,
	}

switch(global._spawning)
{
	case "darter":
	stats =
		{
		identity : "Darter",
		attack : 1,
		defense : 2,
		health_points : 4,
		attack_type : "Acid",
		defense_type : "Chemical Barrier",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 1,
		value : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "model x":
	stats =
		{
		identity : "Model X",
		attack : 3,
		defense : 1,
		health_points : 5,
		attack_type : "Lasers",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 2,
		value : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "snowfox":
	stats =
		{
		identity : "Snowfox",
		attack : 3,
		defense : 6,
		health_points : 5,
		attack_type : "Jolts",
		defense_type : "Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 2,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
		case "hawk":
	stats =
		{
		identity : "Missile Hawk",
		attack : 3,
		defense : 2,
		health_points : 4,
		attack_type : "Lasers",
		defense_type : "Decoys",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "scorpion":
	stats =
		{
		identity : "Scorpion",
		attack : 3,
		defense : 2,
		health_points : 7,
		attack_type : "Frost",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "black eye":
	stats =
		{
		identity : "Black Eye",
		attack : 2,
		defense : 1,
		health_points : 5,
		attack_type : "Beams",
		defense_type : "Chemical Barrier",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 1,
		value : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "shellzerker":
	stats =
		{
		identity : "Shellzerker",
		attack : 4,
		defense : 2,
		health_points : 6,
		attack_type : "Ram",
		defense_type : "Chemical Barrier",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 1,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "bomb-bell":
	stats =
		{
		identity : "Bomb-Bell",
		attack : 3,
		defense : 1,
		health_points : 7,
		attack_type : "Missiles",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "spider":
	stats =
		{
		identity : "Spider",
		attack : 2,
		defense : 2,
		health_points : 8,
		attack_type : "Acid Flash",
		defense_type : "Decoys",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "slugger":
	stats =
		{
		identity : "Slugger",
		attack : 5,
		defense : 3,
		health_points : 6,
		attack_type : "Ram",
		defense_type : "Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 1,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "juggernaut":
	stats =
		{
		identity : "Juggernaut",
		attack : 9,
		defense : 2,
		health_points : 13,
		attack_type : "Ram",
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 13,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "airstriker":
	stats =
		{
		identity : "Airstriker",
		attack : 5,
		defense : 4,
		health_points : 5,
		attack_type : "Jolts",
		defense_type : "Chemical Barrier",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 2,
		value : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "powl-2":
	stats =
		{
		identity : "Powl-2",
		attack : 1,
		defense : 5,
		health_points : 3,
		attack_type : "Laser",
		defense_type : "Deflectors",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 2,
		value : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "old v500":
	stats =
		{
		identity : "Old V500",
		attack : 3,
		defense : 3,
		health_points : 4,
		attack_type : "Missiles",
		defense_type : "Deflectors",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 1,
		value : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "1st class":
	stats =
		{
		identity : "1st Class-Model",
		attack : 2,
		defense : 5,
		health_points : 5,
		attack_type : "Beams",
		defense_type : "Deflectors",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 2,
		value : 3,
		}
		instance_create_layer(x, y, "UI_1",obj_enemy_ship, stats);
	break;
	
	case "model v":
	stats =
		{
		identity : "Model V",
		attack : 2,
		defense : 3,
		health_points : 5,
		attack_type : "Frost",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "model w":
	stats =
		{
		identity : "Model W",
		attack : 4,
		defense : 2,
		health_points : 6,
		attack_type : "Blazes",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "classic stardrake":
	stats =
		{
		identity : "Classic Stardrake",
		attack : 3,
		defense : 2,
		health_points : 6,
		attack_type : "Jolts",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "nebular cruiser":
	stats =
		{
		identity : "Nebular Cruiser",
		attack : 5,
		defense : 3,
		health_points : 7,
		attack_type : "Jolts",
		defense_type : "Plasma Wall",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 2,
		value : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "cyclopes .3":
	stats =
		{
		identity : "Version .3",
		attack : 4,
		defense : 3,
		health_points : 6,
		attack_type : "Beams",
		defense_type : "Decoys",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "cyclopes .7":
	stats =
		{
		identity : "Version .7",
		attack : 5,
		defense : 5,
		health_points : 9,
		attack_type : "Beams",
		defense_type : "Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 2,
		value : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "cyclopes .11":
	stats =
		{
		identity : "Version .11",
		attack : 4,
		defense : 3,
		health_points : 8,
		attack_type : "Beams",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "g100 wasp":
	stats =
		{
		identity : "G100 Wasp",
		attack : 4,
		defense : 1,
		health_points : 5,
		attack_type : "Ram",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "g250 wasp":
	stats =
		{
		identity : "G250 Wasp",
		attack : 5,
		defense : 2,
		health_points : 5,
		attack_type : "Ram",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "celestial slug":
	stats =
		{
		identity : "Celestial Slug",
		attack : 4,
		defense : 3,
		health_points : 10,
		attack_type : "Missiles",
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "plasma t21":
	stats =
		{
		identity : "Plasma Moth T21",
		attack : 6,
		defense : 5,
		health_points : 9,
		attack_type : "Missiles",
		defense_type : "Plasma Wall",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 10,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "plasma t25":
	stats =
		{
		identity : "Plasma Moth T25",
		attack : 7,
		defense : 6,
		health_points : 11,
		attack_type : "Acid",
		defense_type : "Plasma Wall",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 13,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "fireball":
	stats =
		{
		identity : "Wicked Fireball",
		attack : 7,
		defense : 5,
		health_points : 9,
		attack_type : "Blazes",
		defense_type : "Plasma Wall",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 10,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "hyper-77":
	stats =
		{
		identity : "Hyper-77 Vortex",
		attack : 8,
		defense : 9,
		health_points : 10,
		attack_type : "Acid",
		defense_type : "Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 12,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "twister-52":
	stats =
		{
		identity : "Twister-52 Vortex",
		attack : 6,
		defense : 6,
		health_points : 10,
		attack_type : "Frost",
		defense_type : "Chemical Barrier",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 12,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "mystic mk1":
	stats =
		{
		identity : "Mystic MK.1",
		attack : 5,
		defense : 3,
		health_points : 9,
		attack_type : "Blazes",
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "mystic mk2":
	stats =
		{
		identity : "Mystic MK.2",
		attack : 7,
		defense : 6,
		health_points : 11,
		attack_type : "Blazes",
		defense_type : "Decoys",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 13,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "guardian":
	stats =
		{
		identity : "Solar Guardian",
		attack : 6,
		defense : 15,
		health_points : 11,
		attack_type : "Blazes",
		defense_type : "Deflectors",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 4,
		value : 13,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "titan":
	stats =
		{
		identity : "Titan 57",
		attack : 6,
		defense : 3,
		health_points : 15,
		attack_type : "Acid",
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 13,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "shredder":
	stats =
		{
		identity : "Night Shredder",
		attack : 10,
		defense : 3,
		health_points : 9,
		attack_type : "Frost",
		defense_type : "Decoys",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 12,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "reaper":
	stats =
		{
		identity : "Void Reaper",
		attack : 7,
		defense : 3,
		health_points : 7,
		attack_type : "Lasers",
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 10,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "falcon":
	stats =
		{
		identity : "Draconian Falcon",
		attack : 8,
		defense : 6,
		health_points : 12,
		attack_type : "Missiles",
		defense_type : "Energy shield",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 2,
		value : 10,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "specter":
	stats =
		{
		identity : "Specter",
		attack : 5,
		defense : 5,
		health_points : 10,
		attack_type : "Frost",
		defense_type : "Plasma Wall",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 10,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "banshee":
	stats =
		{
		identity : "Banshee",
		attack : 6,
		defense : 9,
		health_points : 9,
		attack_type : "Jolts",
		defense_type : "Deflectors",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "fury-400":
	stats =
		{
		identity : "Fury-400 Striker",
		attack : 8,
		defense : 4,
		health_points : 11,
		attack_type : "Lasers",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 15,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	//all non-player exlusive ships are below
	
	case "shadow":
	stats =
		{
		identity : "Shadow Runner",
		attack : 2,
		defense : 1,
		health_points : 6,
		attack_type : "Acid",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "hacker":
	stats =
		{
		identity : "Hacker's Vessel",
		attack : 1,
		defense : 2,
		health_points : 7,
		attack_type : "Disruption",
		defense_type : "Plasma Wall",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 1,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "ghoul":
	stats =
		{
		identity : "Ghoul",
		attack : 4,
		defense : 1,
		health_points : 5,
		attack_type : "Frost",
		defense_type : "Cloaking",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "wraith":
	stats =
		{
		identity : "Wraith",
		attack : 6,
		defense : 2,
		health_points : 8,
		attack_type : "Jolts",
		defense_type : "Cloaking",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "razortooth":
	stats =
		{
		identity : "Razortooth",
		attack : 5,
		defense : 2,
		health_points : 6,
		attack_type : "Shrapnel",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "bloodwing":
	stats =
		{
		identity : "Bloodwing",
		attack : 6,
		defense : 5,
		health_points : 9,
		attack_type : "Sharpnel",
		defense_type : "Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 2,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "drone-a":
	stats =
		{
		identity : "Drone Type-A",
		attack : 4,
		defense : 2,
		health_points : 6,
		attack_type : "Missiles",
		defense_type : "Decoys",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "drone-b":
	stats =
		{
		identity : "Drone Type-B",
		attack : 3,
		defense : 2,
		health_points : 6,
		attack_type : "Beams",
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "drone-c":
	stats =
		{
		identity : "Drone Type-C",
		attack : 5,
		defense : 3,
		health_points : 7,
		attack_type : "Lasers",
		defense_type : "Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 1,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "drone-d":
	stats =
		{
		identity : "Drone Type-D",
		attack : 2,
		defense : 3,
		health_points : 7,
		attack_type : "Acid",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "dark star":
	stats =
		{
		identity : "Dark Star",
		attack : 4,
		defense : 7,
		health_points : 7,
		attack_type : "Frost",
		defense_type : "Dark-Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "supreme nova":
	stats =
		{
		identity : "Supreme Nova",
		attack : 5,
		defense : 9,
		health_points : 10,
		attack_type : "Blazes",
		defense_type : "Dark-Energy Shield",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 3,
		value : 12,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. darter":
	stats =
		{
		identity : "Upgraded Darter",
		attack : 3,
		defense : 2,
		health_points : 5,
		attack_type : "Acid",
		defense_type : "Chemical Barrier",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 1,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. hawk":
	stats =
		{
		identity : "Up. Missile Hawk",
		attack : 5,
		defense : 3,
		health_points : 5,
		attack_type : "Lasers",
		defense_type : "Decoys",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "grinder":
	stats =
		{
		identity : "Meat Grinder",
		attack : 5,
		defense : 2,
		health_points : 7,
		attack_type : "Blades",
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. black eye":
	stats =
		{
		identity : "Up. Black Eye",
		attack : 4,
		defense : 2,
		health_points : 6,
		attack_type : "Beams",
		defense_type : "Chemical Barrier",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 1,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. powl-2":
	stats =
		{
		identity : "Upgraded Powl-2",
		attack : 3,
		defense : 6,
		health_points : 5,
		attack_type : "Lasers",
		defense_type : "Deflectors",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 2,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "new bell":
	stats =
		{
		identity : "New Age Bell",
		attack : 5,
		defense : 2,
		health_points : 6,
		attack_type : "Blazes",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. 1st class":
	stats =
		{
		identity : "Up. 1st Class Model",
		attack : 3,
		defense : 8,
		health_points : 7,
		attack_type : "Beams",
		defense_type : "Deflectors",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 3,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "suicide ship":
	stats =
		{
		identity : "Suicide Ship",
		attack : 0,
		defense : 4,
		health_points : 5,
		attack_type : "Kamakazi",
		defense_type : "Plasma Wall",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 2,
		value : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "needle":
	stats =
		{
		identity : "The Needle",
		attack : 5,
		defense : 2,
		health_points : 6,
		attack_type : "Frost", //+2 range
		defense_type : "Armor",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "kingfisher":
	stats =
		{
		identity : "Kingfisher",
		attack : 6,
		defense : 5,
		health_points : 7,
		attack_type : "Railcannon", //modified beam weapon
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 10,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "pup":
	stats =
		{
		identity : "The Pup",
		attack : 4,
		defense : 4,
		health_points : 5,
		attack_type : "Jolts",
		defense_type : "Death Marks",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 1,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "bone king":
	stats =
		{
		identity : "King of Bones",
		attack : 4,
		defense : 3,
		health_points : 9,
		attack_type : "Rupture",
		defense_type : "Absorbtion Plates",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. model x":
	stats =
		{
		identity : "Up. Model X",
		attack : 5,
		defense : 2,
		health_points : 6,
		attack_type : "Lasers",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. stardrake":
	stats =
		{
		identity : "Upgraded Stardrake",
		attack : 5,
		defense : 3,
		health_points : 8,
		attack_type : "Jolts",
		defense_type : "Evasion",
		pilot : global._enemy_pilot,
		max_actions : 2,
		regen : 0,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "up. shellzerker":
	stats =
		{
		identity : "Up. Shellzerker",
		attack : 6,
		defense : 2,
		health_points : 8,
		attack_type : "Ram",
		defense_type : "Armor",
		pilot : "Elite Guard",
		max_actions : 2,
		regen : 0,
		value : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	//below are where mini-boss, boss, or other unique enemy ships will be kept
	
	case "goo ship":
	stats =
		{
		identity : "Goo Anomaly",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "shard ship":
	stats =
		{
		identity : "Shard Anomaly",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "tentacle ship":
	stats =
		{
		identity : "Tentacle Anomaly",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "warp ship":
	stats =
		{
		identity : "Warp Anomaly",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "temporal ship":
	stats =
		{
		identity : "Temporal Anomaly",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "heretic boss":
	stats =
		{
		identity : "Heart of Darkness",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "rebel boss":
	stats =
		{
		identity : "Flame of Unrest",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
	
	case "syndicate boss":
	stats =
		{
		identity : "Arm of Injustice",
		attack : 0,
		defense : 0,
		health_points : 0,
		attack_type : "",
		defense_type : "",
		pilot : global._enemy_pilot,
		max_actions : 1,
		regen : 0,
		}
		instance_create_layer(x, y, "UI_1", obj_enemy_ship, stats);
	break;
}

alarm_set(0, 1);