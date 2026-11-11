stats =
	{
	identity : "",
	attack : 0,
	defense : 0,
	health_points : 0,
	attack_type : "",
	defense_type : "",
	pilot : global._pilot_selected,
	slot : global._ship_selected,
	max_actions : 2,
	attack_cost : 1,
	regen : 0,
	value : 0,
	wait : 0,
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 3,
		attack_cost : 1,
		regen : 1,
		value : 8,
		wait : 1,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 0.5,
		regen : 0,
		value : 12,
		wait : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 2,
		value : 15,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 0.5,
		regen : 0,
		value : 13,
		wait : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 17,
		wait : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 1,
		value : 9,
		wait : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 1,
		value : 15,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 16,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
	break;
	
	case "spider":
	stats =
		{
		identity : "Spider",
		attack : 2,
		defense : 2,
		health_points : 8,
		attack_type : "Acid",
		defense_type : "Decoys",
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 15,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 1,
		value : 16,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 32,
		wait : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 3,
		attack_cost : 1.5,
		regen : 2,
		value : 20,
		wait : 5,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 0.5,
		regen : 2,
		value : 9,
		wait : 1,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 1,
		value : 11,
		wait : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
	break;
	
	case "1st class":
	stats =
		{
		identity : "1st Class Model",
		attack : 2,
		defense : 5,
		health_points : 5,
		attack_type : "Beams",
		defense_type : "Deflectors",
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 3,
		attack_cost : 1.5,
		regen : 2,
		value : 12,
		wait : 2,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 3,
		attack_cost : 1.5,
		regen : 0,
		value : 14,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 16,
		wait : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 3,
		attack_cost : 1.5,
		regen : 0,
		value : 15,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 2,
		value : 20,
		wait : 5,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 18,
		wait : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 2,
		value : 21,
		wait : 5,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 23,
		wait : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 14,
		wait : 3,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 17,
		wait : 4,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 25,
		wait : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 3,
		value : 28,
		wait : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 3,
		value : 33,
		wait : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 3,
		value : 28,
		wait : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 3,
		value : 31,
		wait : 8,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 3,
		value : 31,
		wait : 8,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 27,
		wait : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 33,
		wait : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 4,
		value : 33,
		wait : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 33,
		wait : 9,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 0,
		value : 31,
		wait : 8,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 3,
		attack_cost : 1,
		regen : 0,
		value : 28,
		wait : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 2,
		value : 30,
		wait : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 3,
		value : 28,
		wait : 7,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 1,
		regen : 3,
		value : 27,
		wait : 6,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
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
		pilot : global._pilot_selected,
		slot : global._ship_selected,
		max_actions : 2,
		attack_cost : 0.5,
		regen : 0,
		value : 35,
		wait : 10,
		}
		instance_create_layer(x, y, "UI_1", obj_player_ship, stats);
	break;
}

instance_destroy(self, false);