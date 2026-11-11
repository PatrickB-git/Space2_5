pilotSwap_B(_pilot);

global._score_points += round(_power / global._scored_divider);
global._enemy_score -= 3;
global._active_player_ships -= 1;
show_debug_message("LOL");
instance_destroy(self, true);
