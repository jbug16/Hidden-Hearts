// if player is in dialogue with NPC
if (text_index < array_length(text) - 1)
{
	if (keyboard_check_pressed(next_btn))
	{
		text_index++;
	}
}