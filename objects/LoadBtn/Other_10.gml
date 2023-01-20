/// @description Insert description here
// You can write your code in this editor
	
	ImgInd++;
	if mouse_check_button_pressed(mb_left) and !Controller.Load and !Controller.Save 
	{
		Controller.Load = 1;
		ImgInd = 0;
	}
	
	image_index = mouse_check_button(mb_left);