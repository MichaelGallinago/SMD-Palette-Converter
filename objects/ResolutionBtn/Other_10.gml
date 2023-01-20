/// @description Insert description here
// You can write your code in this editor
	var Nmbr = Numb + 1,
		Size = Controller.CamSize;
	if Nmbr != Size and mouse_check_button_pressed(mb_left) 
	{
		if Nmbr < 3 
		{
			window_set_fullscreen(false); // Disable fullscreen
			
			// Set window position
			window_set_position
			(
				window_get_x() - (640 * Nmbr - 640 * Size) / 2, 
				window_get_y() - (360 * Nmbr - 360 * Size) / 2
			);
			with Image surface_resize(Surf, sprite_width * Nmbr, sprite_height * Nmbr);
			window_set_size(640 * Nmbr, 360 * Nmbr); // Set window size
		}
		else 
		{
			window_set_fullscreen(true); // Enable fullscreen
		}
		Controller.CamSize = Nmbr; // Update value
	} 
	image_index = mouse_check_button(mb_left);