_on_ship = global._viewing_ship;
if _on_ship != obj_player_ship_spawn and global._player_inspect == true { 
	draw_text(x - 32, y - 32, "Pilot");
	switch(_on_ship._pilot) {
		case 1:
			draw_sprite(obj_reserve_1_token.sprite_index, 0, x, y);
		break;
		
		case 2:
			draw_sprite(obj_reserve_2_token.sprite_index, 0, x, y);
		break;
		
		case 3:
			draw_sprite(obj_reserve_3_token.sprite_index, 0, x, y);
		break;
		
		case 4:
			draw_sprite(obj_reserve_4_token.sprite_index, 0, x, y);
		break;
		
		case 7:
			draw_sprite(obj_elite_1_token.sprite_index, 0, x, y);
		break;
		
		case 8:
			draw_sprite(obj_elite_2_token.sprite_index, 0, x, y);
		break;
		
		case 9:
			draw_sprite(obj_elite_3_token.sprite_index, 0, x, y);
		break;
	}
}

//consider using elite pilots names and giving reserves a randomly choosen name