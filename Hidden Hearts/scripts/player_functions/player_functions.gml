function getControls()
{
	// Direction Inputs
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	
	// Action Inputs
	jump_key_pressed = keyboard_check_pressed(vk_space);

}