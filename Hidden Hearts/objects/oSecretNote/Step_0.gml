// Controls
npcControls();

// Track key state
if (!(keyboard_check(ord("E")) or gamepad_button_check(0, gp_face1)))
{
    key_released = true;
}

// Check if player can interact
if (oPlayer.state == STATE.IDLE or oPlayer.state == STATE.WALK) 
{
    can_interact = true;
}
else 
{
    can_interact = false;
}

// Check if player is near NPC
if (abs(self.x - oPlayer.x) < 32)
{
	// Check for interaction button pressed
	if (input_pressed and can_interact and !is_interacting and key_released)
	{
		text_index = 0;
		is_interacting = true;
		key_released = false;
		audio_play_sound(sndClick, 1, false);
	}
}

// Check if player is interacting
if (is_interacting)
{
	// Go to next index if key is pressed
	if (text_index < array_length(text) - 1)
	{
		if (input_pressed and key_released)
		{
			text_index++;
			key_released = false;
			audio_play_sound(sndClick, 1, false);
		}
	}
	// If on last index...
	else
	{
		// Stop interacting on key pressed
		if (input_pressed and key_released)
		{
			is_interacting = false;
			key_released = false;
			audio_play_sound(sndClick, 1, false);
			// show arrow
			if (layer_exists("Arrow")) layer_set_visible("Arrow", true);
		}
	}
}

// Reset key_released if key is not pressed
if (!(keyboard_check(ord("E")) or gamepad_button_check(0, gp_face1)))
{
    key_released = true;
}
