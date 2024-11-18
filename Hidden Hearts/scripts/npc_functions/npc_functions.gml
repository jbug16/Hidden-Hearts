function initProperties()
{
	// Bool
	is_interacting = false;
	can_interact = false;
	
	// Text
	text_index = 0;
	
	// Controls
	next_btn = vk_space                           ;
}

function drawTextbox(_x, _y, _w, _h, _w_portrait, _h_portrait)
{
	// Draw textbox
	draw_sprite_stretched(sDialogueBox, 0, _x, _y, _w, _h);

	// draw portrait
	draw_sprite_stretched(sDialogueBox, 0, _x - _w_portrait - 2, _y, _w_portrait, _h_portrait);
}