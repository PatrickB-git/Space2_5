if place_meeting(mouse_x, mouse_y, self) {
	switch(global._spawning) {
		case "darter":
			draw_sprite(spr_darter_token, 0, x, y);
		break;
	}
}

