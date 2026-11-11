_on_ship = global._viewing_ship;
if _on_ship != obj_player_ship_spawn and global._enemy_inspect == true { 
	draw_text(x - 32, y - 32, string(_on_ship._attack_type));
	draw_text(x, y, string(_on_ship._attack));
}

