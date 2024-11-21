function initProperties()
{
	// Bool
	is_interacting = false;
	can_interact = false;
	
	// Text
	text_index = 0;
}

function npcControls()
{
	next_key_pressed = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0, gp_face1);
	interaction_key_pressed = keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(0, gp_face3);
}

function drawTextbox(_x, _y, _w, _h, _w_portrait, _h_portrait)
{
	// Draw textbox
	draw_sprite_stretched(sDialogueBox, 0, _x, _y, _w, _h);

	// draw portrait
	draw_sprite_stretched(sDialogueBox, 0, _x - _w_portrait - 2, _y, _w_portrait, _h_portrait);
}