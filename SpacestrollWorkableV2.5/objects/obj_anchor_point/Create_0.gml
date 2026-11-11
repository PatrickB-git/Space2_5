_move_made = false;
_up_slide = false;
_down_slide = false;
_left_slide = false;
_right_slide = false;
_up_right_slide = false;
_up_left_slide = false;
_down_right_slide = false;
_down_left_slide = false;

show_debug_message("Anchor Point Live");
cross_check =
{
	ship : global._ship_moving,
	_placement : "",
	_up_check : false,
	_down_check : false,
	_right_check : false,
	_left_check : false,
	_ur_check : false,
	_ul_check : false,
	_dr_check : false,
	_dl_check : false,
}

if up > 0 {
	AnchorScript_A("UP", up, 0, -100);
}
if down > 0 {
	AnchorScript_A("DOWN", down, 0, 100);
}
if right > 0 {
	AnchorScript_A("RIGHT", right, 100, 0);
}
if left > 0 {
	AnchorScript_A("LEFT", left, -100, 0);
}

if up_r > 0 {
	AnchorScript_A("UP R", up_r, 100, -100);
}
if up_l > 0 {
	AnchorScript_A("UP L", up_l, -100, -100);
}
if down_r > 0 {
	AnchorScript_A("DOWN R", down_r, 100, 100);
}
if down_l > 0 {
	AnchorScript_A("DOWN L", down_l, -100, 100);
}