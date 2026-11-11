pilotSwap_A(_pilot);
//other things must be added later
global._total_points += global._death_point_bonus;

global._active_player_ships -= 1;
global._player_fleet_size -= 1;
instance_destroy(self, false);
