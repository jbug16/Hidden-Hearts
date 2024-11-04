function getControls()
{
	// Direction Inputs
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	up_key = keyboard_check(ord("W"));
	down_key = keyboard_check(ord("S"));
	
	// Action Inputs
	jump_key_pressed = keyboard_check_pressed(vk_space);
	climb_key = keyboard_check(ord("Q"));
	dash_key_pressed = keyboard_check_pressed(vk_shift);
}