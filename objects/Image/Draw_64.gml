/// @description Insert description here
// You can write your code in this editor

	application_surface_draw_enable(true);
	surface_set_target(application_surface);
	draw_surface(Surf, 0, 64);
	surface_reset_target();
	draw_surface(application_surface, 0, 0);
	application_surface_draw_enable(false);