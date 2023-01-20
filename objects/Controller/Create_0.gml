/// @description Insert description here
// You can write your code in this editor
	var i, j;
	CamSize = 1;
	Mode = 1;
	FileName = "";
	Selected = 0;
	NumbPtrn = 0;
	SavePtrn = 0;
	LoadPtrn = 0;
	Load = 0;
	Save = 0;
	Exit = 0;
	Digits = "0";
	
	#region Font
	////////////
	
	Font = font_add_sprite_ext(spr_font, "0123456789*#:.ABCDEFGHIJKLMNOPQRSTUVWXYZ", false, 0);
	draw_set_font(Font);
	draw_set_halign(fa_center);
	
	#endregion
	
	#region Create Instances
	////////////////////////
	
	var i, j;
	instance_create_depth(0, 0, depth, Cursor);
	with instance_create_depth(0, 0,  depth + 1, Panel) 
	{ 
		image_xscale = 640; image_yscale = 64;
	}
	SysBtn[0] = instance_create_depth(74,  14, depth, ModeBtn  );
	SysBtn[1] = instance_create_depth(2,   2,  depth, SaveBtn  );
	SysBtn[2] = instance_create_depth(2,   34, depth, LoadBtn  );
	SldrBr[0] = instance_create_depth(125, 19, depth, SliderBar);
	SldrBr[1] = instance_create_depth(125, 4,  depth, SliderBar);
	SldrBr[2] = instance_create_depth(125, 34, depth, SliderBar);
	Lck   [0] = instance_create_depth(114, 19, depth, Lock	   );
	Lck   [1] = instance_create_depth(114, 4,  depth, Lock	   );
	Lck   [2] = instance_create_depth(114, 34, depth, Lock	   );
	for (i = 0; i < 2; i++) {
		Ptrn[i][0] = instance_create_depth(387, 18 + 14 * i, depth, PatternBtn);
		Ptrn[i][1] = instance_create_depth(387, 3  + 14 * i, depth, PatternBtn);
		Ptrn[i][2] = instance_create_depth(387, 33 + 14 * i, depth, PatternBtn);
		for (j = 0; j < 3; j++) {
			Ptrn[i][j].Numb = j + 3 * i;
		}
	}
	for (j = 0; j < 3; j++) {
		for (i = 0; i < 8; i++) {
			Sldr [j][i] = instance_create_depth(SldrBr[j].x + 2 + 32 * i, SldrBr[j].y - 1,  depth - 1, Slider );
			TxtBx[j][i] = instance_create_depth(SldrBr[j].x + 33 * i,     SldrBr[j].y + 13, depth - 1, TextBox);
			with TxtBx[j][i] {
				Numb = i;
				SlNumb = j;
				if i > 3 { --x; }
				Count = string(i * 32);
				BaseCount = Count;
				Image.BarVal[j][i] = Count;
			}
		}
	}
	for (i = 0; i < 3; i++) {
		ResBtn[i] = instance_create_depth(32, 1 + 21 * i, depth, ResolutionBtn);
		ResBtn[i].Numb = i;
	}
	
	scr_mode_visible_full();
	
	#endregion