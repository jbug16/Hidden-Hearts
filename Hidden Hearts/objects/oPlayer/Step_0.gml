// Get Controls
getControls();
debugControls();

// State Machine
switch (state)
{
    case STATE.IDLE:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerIdle;
	
		// Switch States
		if (isTransitioning()) break;
        if (isDashing()) state = STATE.DASH;
        else if (isJumping()) state = STATE.JUMP;
        else if (isFalling()) state = STATE.FALL;
        else if (isWalking()) state = STATE.WALK;
		else if (isClimbing()) state = STATE.CLIMB;
		else if (isInteracting()) state = STATE.INTERACTING;
        
        playerMovement();
		
    break;

    case STATE.WALK:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerWalk;
	
		// Switch States
        if (isDashing()) state = STATE.DASH;
        else if (isJumping()) state = STATE.JUMP;
        else if (isFalling()) state = STATE.FALL;
        else if (isIdle()) state = STATE.IDLE;
		else if (isClimbing()) state = STATE.CLIMB;
		else if (isInteracting()) state = STATE.INTERACTING;

        playerMovement();
		
    break;

    case STATE.JUMP:
	
		// Disable coyote time once a jump is made
	    if (jump_count == 1) coyote_time = coyote_time_max;
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerJump;
	
		// Switch States
        if (!isJumping()) state = STATE.NONE;
        
        playerMovement();
		
    break;

    case STATE.FALL:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerFall;
	
		// Switch States
		if (isIdle()) 
		{
			state = STATE.IDLE;
			jump_count = 0;
			coyote_time = coyote_time_max;
		}
		else if (isWalking())
		{
			state = STATE.WALK;
			jump_count = 0;
			coyote_time = coyote_time_max;
		}
        else if (isDashing()) state = STATE.DASH;
		else if (isJumping()) state = STATE.JUMP;
		else if (isClimbing()) state = STATE.CLIMB;
        
        playerMovement();
		
    break;

    case STATE.DASH:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerDash;
	
		// Switch States
        if (isIdle()) state = STATE.IDLE;
		
		playerMovement();

    break;
	
	case STATE.CLIMB:
		
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerClimb;
	
		// Climbing
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
		
		// Switch States
		if (!isClimbing()) state = STATE.NONE;
		
	break;
	
	case STATE.DEAD:
	
		instance_create_layer(x, y, "Player", oPlayerDead);
		instance_destroy();
	
	break;
	
	case STATE.INTERACTING:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerIdle;
		
		// Switch States
		var _success = true;
		with (oNPCParent) {
		    if (is_interacting)
			{
		        _success = false;
		        break;
		    }
		}

		with (oSecretNote) {
		    if (is_interacting)
			{
		        _success = false;
		        break;
		    }
		}

		if (_success) {
		    state = STATE.NONE;
		}
	
	break;
	
	case STATE.NONE:
	
		// Switch States
		if (isIdle()) state = STATE.IDLE;
		else if (isDashing()) state = STATE.DASH;
		else if (isFalling()) state = STATE.FALL;
        else if (isJumping()) state = STATE.JUMP;
        else if (isWalking()) state = STATE.WALK;
		else if (isClimbing()) state = STATE.CLIMB;
        
        playerMovement();
		
	break;
}