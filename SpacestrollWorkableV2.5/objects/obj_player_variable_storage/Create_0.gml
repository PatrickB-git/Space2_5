random_set_seed(random_range(0000001, 9999999));
randomize();

//passive modifiers
global._first_ship_played = true;
global._upgrade_costs = 0;
global._fleet_health = 0;
global._efficacy = 0;
global._reserve_gain = 0;
global._elite_gain = 0;
global._first_ship_cost_m = 0;
global._starting_max_actions = 0;
global._bonus_starting_points = 0;
global._first_ship_max_a = 0;
global._starting_shells = 0;
global._passive_p_bonus = 0;
global._first_ship_atk = 0;
global._first_ship_def = 0;
global._first_ship_hp = 0;
global._lone_wolf = false;
global._wait_loss_start = 0;
global._phantom_wave = false;
global._elite_ship_start = false;
global._first_ship_strike = true;
global._single_turn_strike = false;
global._single_ship_strike = false; //paired with above modifier
global._bonus_points_cost_cut = 0;
global._elite_pilot_hp = 0;
global._shadow_fleet = false;
global._ghost_fleet = false; //paired with above modifier
global._death_point_bonus = 0; 
global._elite_pilot_atk = 0; //\/ \/ \/
global._first_enemy_sabotage = false; //
global._elite_pilot_def = 0;
global._equalized_points = 1;
global._fair_start = false;
global._sly_start = false; //paired with above modifier
global._territorial = false;
global._resilient = false;
global._max_actions_cost_cut = 0;
global._fast_cycle = false;
global._swift_cycle = false; //paired with above modifier
global._pilot_training_cost_cut = 0;
global._lite_twist = false;
global._big_twist = false; //paired with above modifier
global._paccifism = false;
global._avatars = false;
global._benders = false; //paired with above modifier
global._elite_start_actions = 0;
global._heavy_hitter = false;
global._alt_tactics = false;
global._sadism = false;
global._revives = 0;
global._elite_forces = false;
global._elite_power = 0; //paired with above modifier
global._randomize = false;

global._player_captain = "";
global._ship_slot_1 = "";
global._ship_slot_2 = "";
global._ship_slot_3 = "";
global._hangar_wait = 0; 
global._player_actions_max = 1;
global._player_actions_taken = 0;
global._reset = false;

global._score_points = 0; //points equal to [1/2] to 1/3 of the value of the ship
global._destroy_points = 0; //points equal to the relative value of the ship
global._inactive_points = 0; //+2 points per inactive elite pilot, +1 per inactive (ready) reserve pilot
global._inaction_points = 0; //+3 points per action left untaken 
global._action_points = 0; //achieved with upgrade.
global._starting_points = 15; //15 base-line starting points?

global._upgrade_1_level = 0; //increases point value gain
global._upgrade_2_level = 0; //increases max actions
global._upgrade_3_level = 0; //improves pilot training time and ship syngerization
global._powerup_1_count = 0; //allows you to attack any enemy for 5 damage
global._powerup_2_count = 0; //allows you to heal any ship for 3 health (and remove most status effects)

global._pilot_1_ready = true;
global._pilot_2_ready = false;
global._pilot_3_ready = false;
global._pilot_4_ready = false;
global._pilot_1_active = false;
global._pilot_2_active = false;
global._pilot_3_active = false;
global._pilot_4_active = false;
global._pilot_1_wait = 0;
global._pilot_2_wait = 2;
global._pilot_3_wait = 4;
global._pilot_4_wait = 8;
_pilot_0_behvaior = "";

global._elite_1_active = false;
global._elite_2_active = false;
global._elite_3_active = false;
global._elite_1_alive = true;
global._elite_2_alive = true;
global._elite_3_alive = true;
global._elite_1_id = "Daisy";
global._elite_2_id = "Zyntax";
global._elite_3_id = "Phezsanete";

global._player_fleet = [8.5, 15.1, 9.5, 15.3, 13, 12];
show_debug_message(string(global._player_fleet));


global._player_fleet_size = array_length(global._player_fleet) - 1;
global._active_player_ships = 0;
global._player_icon = "";
global._enemy_icon = ""
global._player_score = global._player_fleet_size * 2;

global._player_passive_1 = 0;
global._player_passive_2 = 0;
global._player_passive_3 = 0;
global._enemy_passive_1 = 0;
global._enemy_passive_2 = 0;
global._enemy_passive_3 = 0;
global._player_nametag = "";
global._enemy_nametag = "";




global._ship_selected = obj_player_ship_spawn;
global._pilot_selected = obj_player_ship_spawn;
global._spawning = "";
global._placing_ship = false;

global._player_inspect = false;
global._enemy_inspect = false;
global._viewing_ship = obj_player_ship_spawn;

global._move_x = 0;
global._move_y = 0;
global._player_turn = true;
global._ship_moving = obj_player_ship_spawn;
global._attack_origin = obj_player_ship_spawn;

global._can_fire = false;
global._check_fire = false;
global._fire_check_x = x;
global._fire_check_y = y;

global._priority = ds_list_create()
global._turn_now = 0;
global._turn_taken = true;

global._enemy_pilot = "Zartar";
global._total_fleet_count = 10;
global._current_fleet_count = 10;
global._active_enemies = 0;
global._lament = false;
global._lamenting = 0;
global._enemy_fleet = ["", "darter", "darter", "", "model x", "", "darter", "darter", "", "snowfox", "", "darter", "", "model x", "model x", "", "snowfox"];
global._enemy_score = global._current_fleet_count;

global._can_fire = false;
global._end_turn = false;

global._destroyed_multiplier = 1;
global._scored_divider = 3;
global._inactive_bonus = 0;
global._inaction_bonus = 0;
global._passive_points = 0;

global._wait_decrease = 0; //unimplemented
global._match_bonus = 0; //unimplmented 

global._victory = false;

global._new_game = false;