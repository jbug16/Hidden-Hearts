// Check if player is near NPC
if (abs(self.x - oPlayer.x) < 32)
{
	// Check for interaction button pressed and player is not already interacting
	if (keyboard_check_pressed(ord("E")) and !is_interacting)
	{
		text_index = 0;
		is_interacting = true;
	}
	
	// Check if player is interacting
	if (is_interacting)
	{
		// Go to next index if key is pressed
		if (text_index < array_length(text) - 1)
		{
			if (keyboard_check_pressed(next_btn))
			{
				text_index++;
			}
		}
		// If on last index...
		else
		{
			// Stop interacting on key pressed
			if (keyboard_check_pressed(next_btn))
			{
				is_interacting = false;
			}
		}
	}
}