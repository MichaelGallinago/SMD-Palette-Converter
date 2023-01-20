/// @description Insert description here
// You can write your code in this editor
	
	Surf = -1;
	BarVal[2][7] = 0;
	ImgInd = 0;
	Size = 1;
	XPrev = 0;
	YPrev = 0;
	ViewX = 0;
	ViewY = 0;
	CamMov = 0;
	Sprite = 0;
	ClrMd = shader_get_uniform(shdPalette, "ColorMode");
	Bar1  = shader_get_uniform(shdPalette, "Bar1");
	Bar2  = shader_get_uniform(shdPalette, "Bar2");
	Bar3  = shader_get_uniform(shdPalette, "Bar3");
	
	//view_enabled[0] = true;
	//view_visible[0] = true;	
	//camera_set_view_size(view_camera[0], 640 * Size, 296 * Size);
	application_surface_draw_enable(false);