/// @description Insert description here
// You can write your code in this editor
	if mouse_check_button_pressed(mb_left) 
	{ 
		XPrev = mouse_x; 
		YPrev = mouse_y;
	}
	
	if mouse_check_button(mb_left) 
	{
		if (XPrev != mouse_x) ViewX -= mouse_x - XPrev; 
		if (YPrev != mouse_y) ViewY -= mouse_y - YPrev; 
		if (ViewX < 0) ViewX = 0;
		if (ViewY < 64) ViewY = 64;
	}