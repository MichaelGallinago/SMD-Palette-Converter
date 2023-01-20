/// @description Insert description here
// You can write your code in this editor

	if mouse_check_button_pressed(mb_left) {
		if !Controller.SavePtrn and !Controller.LoadPtrn {
			if Numb < 3 { Controller.SavePtrn = 1 }
			else        { Controller.LoadPtrn = 1 }
			Controller.NumbPtrn = Numb
		}
	}
	image_index = mouse_check_button(mb_left)