/// @description Insert description here
// You can write your code in this editor
	x = mouse_x;
	y = mouse_y;
	var Col = instance_place(x, y, grpBtn);
	if Col != noone and Col.visible 
	{
		if Col = instance_place(x, y, TextBox) 
		{
			window_set_cursor(cr_beam);
		} 
		else 
		{
			window_set_cursor(cr_handpoint);
		}
	}
	else 
	{
		window_set_cursor(cr_default);
	}