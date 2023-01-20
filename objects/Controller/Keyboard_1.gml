/// @description Insert description here
// You can write your code in this editor

	Digits = string_digits(keyboard_string);
	if Digits != "" 
	{
		Digits = string_copy(string(int64(Digits)), 1, 3); 
		keyboard_string = Digits;
	} 
	else 
	{ 
		Digits = "0"; 
		keyboard_string = "0"; 
	}