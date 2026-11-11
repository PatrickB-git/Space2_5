_on_ship = global._viewing_ship;
if _on_ship != obj_player_ship_spawn and global._enemy_inspect == true { 
	draw_text(x - 32, y - 32, string(_on_ship._id));
	draw_sprite(_on_ship.sprite_index, 0, x, y);
}
