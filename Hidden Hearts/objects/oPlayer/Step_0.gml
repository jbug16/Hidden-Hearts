// Get Controls
getControls();

// Climbing
climbing = false;
if (climb_key)
{
	if (place_meeting(x + 4, y, oWall) || place_meeting(x - 4, y, oWall))
	{
		climbing = true;
			
		if (up_key)
		{
			// Check if there is another wall above
			if (place_meeting(x - 8, y - climb_spd - 8, oWall) || place_meeting(x + 8, y - climb_spd - 8, oWall))
			{
				if (!place_meeting(x, y - climb_spd, oWall)) y -= climb_spd;
				else while (!place_meeting(x, y - 1, oWall)) y -= 1;
			}
		}
		if (down_key)
		{
			// Check if there is another wall below
			if (place_meeting(x - 8, y + climb_spd + 8, oWall) || place_meeting(x + 8, y + climb_spd + 8, oWall))
			{
				if (!place_meeting(x, y + climb_spd, oWall)) y += climb_spd;
				else while (!place_meeting(x, y + 1, oWall)) y += 1;
			}
		}
	}
}

if (!climbing)
{
// X Movement
	move_dir = right_key - left_key;
	xspd = move_dir * move_spd;

	// X Collision
	var _sub_pixel = 0.5;
	if (place_meeting(x + xspd, y, oWall))
	{
		var _pixel_check = _sub_pixel * sign(xspd);
		while (!place_meeting(x + _pixel_check, y, oWall))
		{
			x += _pixel_check;
		}
	
		xspd = 0;
	}

	x += xspd;

// Y Movement
	yspd += grav;

	// Cap falling speed
	if (yspd > term_vel) yspd = term_vel;

	// Reset jumps
	if (place_meeting(x, y + 1, oWall)) current_jumps = 0;
	// Count falling as a jump
	else if (current_jumps == 0) current_jumps = 1;

	// Jump
	if (jump_key_pressed && current_jumps < max_jumps)
	{
		yspd = jspd;
		current_jumps++;
	}

	// Y Collision
	if (place_meeting(x, y + yspd, oWall))
	{
		var _pixel_check = _sub_pixel * sign(yspd);
		while (!place_meeting(x, y + _pixel_check, oWall))
		{
			y += _pixel_check;
		}
	
		yspd = 0
	}

	y += yspd;
}