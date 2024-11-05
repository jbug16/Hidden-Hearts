// Get Controls
getControls();

// State Machine
switch (state)
{
    case STATE.IDLE:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerIdle;
	
		// Switch States
        if (isDashing()) state = STATE.DASH;
        else if (isJumping()) state = STATE.JUMP;
        else if (isFalling()) state = STATE.FALL;
        else if (isWalking()) state = STATE.WALK;
		else if (isClimbing()) state = STATE.CLIMB;
        
        playerMovement();
        s("idle");
		
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

        playerMovement();
        s("walk");
		
    break;

    case STATE.JUMP:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerJump;
	
		// Switch States
        if (isDashing()) state = STATE.DASH;
        else if (isFalling()) state = STATE.FALL;
        else if (isIdle()) state = STATE.IDLE;
		else if (isClimbing()) state = STATE.CLIMB;
        
        playerMovement();
        s("jump");
		
    break;

    case STATE.FALL:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerIdle;
	
		// Switch States
        if (isDashing()) state = STATE.DASH;
		else if (isJumping()) state = STATE.JUMP;
        else if (isIdle()) state = STATE.IDLE;
		else if (isClimbing()) state = STATE.CLIMB;
        
        playerMovement();
        s("fall");
		
    break;

    case STATE.DASH:
	
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerIdle;
	
		playerMovement();
        
		// Switch States
        if (isIdle()) state = STATE.IDLE;
        
        s("dash");
    break;
	
	case STATE.CLIMB:
		
		// Set Sprites
		setSpriteDirection();
		sprite_index = sPlayerIdle;
	
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
		
	    s("climb");
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
		s("none");
	break;
}