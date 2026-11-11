/// @description Force Stop

speed = 0;
move_towards_point(x, y, speed);
show_debug_message(string(y));

if y > 850 {
	instance_destroy(self, false);
}
