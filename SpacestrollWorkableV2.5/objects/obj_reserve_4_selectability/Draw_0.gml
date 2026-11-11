if global._pilot_4_ready == false and global._pilot_4_active == false {
	draw_line(x - 45, y - 40, x + 45, y + 40);
	draw_line(x - 45, y + 40, x + 45, y - 40);
}
if global._pilot_4_active == true {
	draw_rectangle(x - 45, y - 40, x + 45, y + 40, true);
}