// Input
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

// Collision
function xCollision()
{
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
}

function yCollision()
{
	var _sub_pixel = 0.5;
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
}

// Movement
function xMovement()
{
	move_dir = right_key - left_key;
	xspd = move_dir * move_spd;
}

function yMovement()
{
	yspd += grav;

	// Cap falling speed
	if (yspd > term_vel) yspd = term_vel;

	// Reset jumps
	if (place_meeting(x, y + 1, oWall)) 
	{
		current_jumps = 0;
	}
	// Count falling as a jump
	else if (current_jumps == 0) current_jumps = 1;
}

function jump()
{
	if (jump_key_pressed && current_jumps < max_jumps)
	{
		yspd = jspd;
		current_jumps++;
	}
}

function playerMovement()
{
	// X 
	xMovement();
	xCollision();
	x += xspd;

	// Y
	yMovement();
	jump();
	yCollision();
	y += yspd;
}

// States
function isIdle()
{
	return xspd == 0 && yspd == 0;
}

function isWalking()
{
	return xspd != 0 && yspd == 0;
}

function isJumping()
{
	return yspd < 0;
}

function isFalling()
{
	return yspd > 0;
}

function isClimbing()
{
	return climb_key && (place_meeting(x + 4, y, oWall) || place_meeting(x - 4, y, oWall));
}

function isDashing()
{
	
}

function isDead()
{
	return false;
}