/// @description Insert description here
// You can write your code in this editor

	if Sprite
	{
		sprite_index = Sprite;
	
		if Size > 0.05 and mouse_wheel_up() 
		{ 
			Size -= 0.05;
			camera_set_view_size(view_camera[0], 640 * Size, 296 * Size); 
		}
		if Size < 10 and mouse_wheel_down() 
		{
			Size += 0.05;
			camera_set_view_size(view_camera[0], 640 * Size, 296 * Size); 
		}
		camera_set_view_pos(view_camera[0], ViewX - camera_get_view_width(view_camera[0]) / 2 + 320, ViewY - camera_get_view_height(view_camera[0]) / 2 + 212)

		var Mode = Controller.Mode;
		if !Mode 
		{ 
			draw_self();
		} 
		else 
		{
			shader_set(shdPalette); 
			shader_set_uniform_i(ClrMd, Mode);
			if Mode = 1 
			{
				shader_set_uniform_f_array(Bar1, BarVal[0]);
			} 
			else 
			{
				shader_set_uniform_f_array(Bar2, BarVal[1]); 
				shader_set_uniform_f_array(Bar3, BarVal[2]);
			}
			draw_self();
			shader_reset();
		}
	}