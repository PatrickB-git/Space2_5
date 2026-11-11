global._current_fleet_count -= 1;
global._active_enemies -= 1;
global._turn_taken = true;
global._turn_now -= 1;
ds_list_delete(global._priority, ds_list_find_index(global._priority, self))

//increases fleet count (number of available ships for enemy), decreases number of active enemies, sets lament variables and check_p