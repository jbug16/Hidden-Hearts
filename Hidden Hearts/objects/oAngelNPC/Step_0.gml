// Controls
npcControls();

// Check if player can interact
if (instance_exists(oPlayer))
{
	if (oPlayer.state == STATE.IDLE or oPlayer.state == STATE.WALK) can_interact = true;
	else can_interact = false;

	// Check if player is near NPC
	if (abs(self.x - oPlayer.x) < 32)
	{
		// Check for interaction button pressed
		if (interaction_key_pressed and can_interact  and !is_interacting)
		{
			text_index = 0;
			is_interacting = true;
			audio_play_sound(sndClick, 1, false);
		}
	}
}

// Check if player is interacting
if (is_interacting)
{
	// Go to next index if key is pressed
	if (text_index < array_length(text) - 1)
	{
		if (next_key_pressed)
		{
			text_index++;
			audio_play_sound(sndClick, 1, false);
		}
	}
	// If on last index...
	else
	{
		// Stop interacting on key pressed
		if (next_key_pressed)
		{
			is_interacting = false;
			audio_play_sound(sndClick, 1, false);
			if (!instance_exists(oTransitionFade)) fadeToRoom(rEndScreen, 180, c_black);
		}
	}
}