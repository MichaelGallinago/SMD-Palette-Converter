/// @description Insert description here
// You can write your code in this editor

	if Select {
		if keyboard_check(vk_control) {
			var Clipboard = string_digits(clipboard_get_text())
			if Clipboard != "" {
				if keyboard_check_pressed(ord("V")) { Count = Clipboard; keyboard_string = Clipboard; }
			}
			if keyboard_check_pressed(ord("C")) { clipboard_set_text(Count); }
		}
		if keyboard_check_pressed(vk_enter)  { Select = 0; Controller.Exit = 1; }
		if keyboard_check_pressed(vk_escape) { Select = 0; Controller.Exit = 2; }
		Controller.Selected = id;
		scr_selected();
	}