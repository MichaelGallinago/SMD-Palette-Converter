/// @description Insert description here
// You can write your code in this editor

	if mouse_check_button_pressed(mb_left) 
	{ 
		OrigX = ViewX;
		OrigY = ViewY;
		MOrigX = display_mouse_get_x();
		MOrigY = display_mouse_get_y();
		CamMov = 1; 
	}
	
	if CamMov and mouse_check_button(mb_left) 
	{
		ViewX = OrigX + (MOrigX - display_mouse_get_x()) * Size / (window_get_width() / 640);
		ViewY = OrigY + (MOrigY - display_mouse_get_y()) * Size / (window_get_height() / 360); 
	}
