if global._elite_3_alive == false {
	draw_line(x - 45, y - 40, x + 45, y + 40);
	draw_line(x - 45, y + 40, x + 45, y - 40);
}
if global._elite_3_active == true {
	draw_rectangle(x - 45, y - 40, x + 45, y + 40, true);
}