// Input
function getControls()
{
	// Direction Inputs
	right_key = keyboard_check(ord("D")) or (gamepad_axis_value(0, gp_axislh) > 0.5);
	left_key = keyboard_check(ord("A")) or (gamepad_axis_value(0, gp_axislh) < -0.5);
	up_key = keyboard_check(ord("W")) or (gamepad_axis_value(0, gp_axislv) < -0.5);
	down_key = keyboard_check(ord("S")) or (gamepad_axis_value(0, gp_axislv) > 0.5);
	
	// Action Inputs
	jump_key_pressed = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0, gp_face1);
	climb_key = keyboard_check(ord("Q")) or gamepad_button_check(0, gp_shoulderrb);
	dash_key_pressed = keyboard_check_pressed(vk_shift) or gamepad_button_check(0, gp_shoulderrb);
}

function debugControls()
{
	// Adding shards
	if (keyboard_check(vk_up) and keyboard_check_pressed(ord("S")))
	{
		global.shards_collected++;
		s("global.shards_collected: +" + string(global.shards_collected));
	}
	
	// Deleting shards
	if (keyboard_check(vk_down) and keyboard_check_pressed(ord("S")))
	{
		global.shards_collected--;
		s("global.shards_collected: -" + string(global.shards_collected));
	}
	
	// Adding max jumps
	if (keyboard_check(vk_up) and keyboard_check_pressed(ord("J")))
	{
		max_jumps++;
		s("max_jumps: +" + string(max_jumps));
	}
	
	// Deleting max jumps
	if (keyboard_check(vk_down) and keyboard_check_pressed(ord("J")))
	{
		max_jumps--;
		s("max_jumps: -" + string(max_jumps));
	}
	
	// Go to testing room
	if (keyboard_check(vk_control) and keyboard_check_pressed(ord("T")))
	{
		room_goto(rGame);
		s("Entering testing room...");
	}
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
	
	setOnGround();
	
}

// Movement
function xMovement()
{
	move_dir = right_key - left_key;
	xspd = move_dir * move_spd;
}

function yMovement()
{
	// Gravity
	yspd += grav;
	
	// Jump
	jump();
	
	if (state == STATE.FALL and coyote_time == 0) jump_count++;
	s(coyote_time);
}

function jump()
{
	if (jump_key_pressed) 
	{
	    if ((jump_count == 0 && coyote_time > 0) || jump_count < max_jumps) 
		{
	        // Perform the jump
	        yspd = jspd;
        
	        // Increment jump count
	        jump_count++;
        
	        // Disable coyote time once a jump is made
	        if (jump_count == 1) coyote_time = coyote_time_max;
	    }
	}
}

function playerMovement()
{
	// Coyote time
	if (place_meeting(x, y + 1, oWall)) 
	{
	    // Reset coyote time when touching the ground
	    coyote_time = coyote_time_max;
	    jump_count = 0; // Reset jump count when on the ground
	}
	else
	{
		if (coyote_time > 0) coyote_time--;
	}
	
	// X 
	xMovement();
	xCollision();
	x += xspd;

	// Y
	yMovement();
	yCollision();
	y += yspd;
}

function setOnGround()
{
	
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

function isInteracting()
{
	with (oNPCParent) {
        if (is_interacting)
            return true;
    }

    with (oSecretNote) {
        if (is_interacting)
            return true;
    }

    return false;
}

function isTransitioning()
{
	return instance_exists(oTransition);
}

// Sprites
function setSpriteDirection()
{
	if (move_dir != 0) 
	{
		image_xscale = move_dir;
	}
}