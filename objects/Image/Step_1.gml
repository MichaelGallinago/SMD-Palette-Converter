/// @description Insert description here
// You can write your code in this editor

	var NewY = ViewY - 148 * Size - 64;
	Panel.y = NewY;
	with grpInterface y = BgnY + NewY;
	camera_set_view_pos(view_camera[1], 0, ViewY - 148 * Size - 64);