/// @description Insert description here
// You can write your code in this editor
	
	ImgInd++;
	if mouse_check_button_pressed(mb_left) { 
		var Part = BtnPart;
		with Controller {
			switch Mode {
				case 0: Part.sprite_index = spr_col_btn1; Mode = 1; break;
				case 1: Part.sprite_index = spr_col_btn2; Mode = 2; break;
				case 2: Part.sprite_index = spr_void;	  Mode = 0; break;
			}
			scr_mode_visible_full();
		}
		ImgInd = 0;
	} 
	image_index = mouse_check_button(mb_left);