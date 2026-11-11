if global._player_inspect == true {
	view_set_visible(0, false);
	view_set_visible(1, true);
	view_set_visible(2, false);
	_differing = true;
}
if global._enemy_inspect == true {
	view_set_visible(0, false);
	view_set_visible(1, false);
	view_set_visible(2, true);
	//view_camera = 2;
	_differing = true;
}
if global._player_inspect == false and global._enemy_inspect == false {
	view_set_visible(0, true);
	view_set_visible(1, false);
	view_set_visible(2, false);
	//view_camera = 0;
}