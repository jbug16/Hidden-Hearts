// Moving
move_spd = 2;
move_dir = 0;
xspd = 0;
yspd = 0;

// Jumping
grav = 0.275;
term_vel = 4;
jspd = -5.25;

current_jumps = 0;
max_jumps = 2;

// Climbing
climbing = false;
climb_spd = 1;

// Dashing
can_dash = false;
dash_distance = 128;
dash_time = 12;

// States
StateFree = function()
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
		
		if (can_dash && dash_key_pressed)
		{
			can_dash = false;
			dash_direction = point_direction(0, 0, right_key - left_key, down_key - up_key);
			dash_spd = dash_distance/dash_time;
			dash_energy = dash_distance;
			state = StateDash;
		}

		// Y Collision
		if (place_meeting(x, y + yspd, oWall))
		{
			if (yspd > 0) can_dash = true;
			
			var _pixel_check = _sub_pixel * sign(yspd);
			while (!place_meeting(x, y + _pixel_check, oWall))
			{
				y += _pixel_check;
			}
	
			yspd = 0
		}

		y += yspd;
}

StateDash = function()
{
	// Move via dash
	xspd = lengthdir_x(dash_spd, dash_direction);
	yspd = lengthdir_y(dash_spd, dash_direction);
	
	// Trail effect
	with (instance_create_depth(x,y,depth+1,oTrail))
	{
		sprite_index = other.sprite_index;
		image_blend = c_fuchsia;
		image_alpha = 0.7;
	}
	
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
		
		// Ending Dash
		dash_energy -= dash_spd;
		if (dash_energy <= 0)
		{
			xspd = 0;
			yspd = 0;
			state = StateFree;
		}
}

state = StateFree;