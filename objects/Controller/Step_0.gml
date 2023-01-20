/// @description Insert description here
// You can write your code in this editor

	var i, Dir, File;
	
	if SavePtrn 
	{ 
		Dir = get_save_filename_ext("Text File|*.txt", "NewPatern", working_directory + "\Palette Paterns", "Save a pattern here");
		if Dir != "" 
		{
			File = file_text_open_write(Dir);
			var sel = NumbPtrn mod 3;
			for (i = 0; i < 8; i++) 
			{
				file_text_write_string(File, TxtBx[sel][i].BaseCount);
				file_text_writeln(File);
			}
			file_text_close(File);
		}
		SavePtrn = 0;
		Selected = 0;
	}
	
	if LoadPtrn 
	{ 
		Dir = get_open_filename_ext("Text File|*.txt", "", working_directory + "\Palette Paterns", "Open a saved pattern");
		if Dir != "" 
		{
			File = file_text_open_read(Dir);
			var sel = NumbPtrn mod 3;
			for (i = 0; i < 8; i++) 
			{
				var read = file_text_read_real(File);
				TxtBx[sel][i].BaseCount = read;
				TxtBx[sel][i].Count = string(read);
				Image.BarVal[sel][i] = read;
				Sldr[sel][i].x = SldrBr[sel].x + read + 2;
				file_text_readln(File);
			}
			file_text_close(File);
		}
		LoadPtrn = 0;
		NumbPtrn = 0;
	}
	
	if Load 
	{
		Dir = get_open_filename_ext("Image File|*.png", "", working_directory, "Open an image");
		if Dir != "" 
		{
			FileName = filename_name(Dir);
			var Spr = sprite_add(Dir, 1, 0, 0, 0, 0);
			with Image 
			{
				SprWid = sprite_get_width(Spr); 
				SprHgh = sprite_get_height(Spr);
				ViewX = -320 + SprWid / 2;
				ViewY = -148 + SprHgh / 2;
				Sprite = Spr;
			}
		}
		Load = 0;
	}
	
	if Save 
	{
		var Dir = get_save_filename_ext("Image File|*.png", "", working_directory, "Save an image here");
		if Dir != "" 
		{ 
			surface_save_part(Image.Surf, Dir, 0, 0, Image.SprWid, Image.SprHgh); 
		}
		Save = 0;
	}