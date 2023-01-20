function scr_update_surface() 
{
	if !surface_exists(Surf) 
	{
		Surf = surface_create(640, 296);
		view_surface_id[0] = Surf;
	}
}

function scr_free_surface() 
{
	if surface_exists(Surf) 
	{
		surface_free(Surf);
		view_set_surface_id(view_camera[0], application_surface);
	}
}