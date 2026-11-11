if global._pilot_1_ready == false and global._pilot_1_active == false {
	draw_line(x - 45, y - 40, x + 45, y + 40);
	draw_line(x - 45, y + 40, x + 45, y - 40);
}
if global._pilot_1_active == true {
	draw_rectangle(x - 45, y - 40, x + 45, y + 40, true);
}