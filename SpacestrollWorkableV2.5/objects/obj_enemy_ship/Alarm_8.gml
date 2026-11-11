/// @description Unsure

speed = 0;
move_towards_point(x, y, speed);
show_debug_message(string(y));

//test this out later
if y < 100 {
	instance_destroy(self, false);
}