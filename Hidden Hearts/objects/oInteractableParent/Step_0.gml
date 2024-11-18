// check if player is in dialogue
if (oPlayer.state == STATE.INTERACTING)
{
	// check if there is more text to loop through
	if (text_index < array_length(text) - 1)
	{
		if (keyboard_check_pressed(next_btn))
		{
			text_index++;
		}
	}
	// if not, close dialogue
	else if (keyboard_check_pressed(next_btn))
	{
		oPlayer.state = STATE.IDLE;
	}
}