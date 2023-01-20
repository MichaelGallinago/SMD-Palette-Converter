/// @description Insert description here
// You can write your code in this editor
	
	ImgInd++
	if Image.Sprite != 0 and mouse_check_button_pressed(mb_left) and !Controller.Save and !Controller.Load {
		Controller.Save = 1
		ImgInd = 0
	} 
	image_index = mouse_check_button(mb_left)