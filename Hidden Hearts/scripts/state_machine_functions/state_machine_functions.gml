// States
function shouldEnterIdle()
{
    return xspd == 0 && yspd == 0 && !shouldEnterClimb() && !shouldEnterDash();
}

function shouldEnterWalk()
{
    return xspd != 0 && yspd == 0;
}

function shouldEnterJump()
{
    return yspd < 0 && !shouldEnterClimb();
}

function shouldEnterFall()
{
    return yspd > 0 && !shouldEnterClimb();
}

function shouldEnterClimb()
{
    return climb_key && (place_meeting(x + 4, y, oWall) || place_meeting(x - 4, y, oWall));
}

function shouldEnterDash()
{
    // Add your dash logic
}

function shouldEnterInteract()
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

function shouldEnterTransition()
{
    return instance_exists(oTransitionHeart) || instance_exists(oTransitionDeath);
}

function isTransitionComplete()
{
    return !instance_exists(oTransitionHeart) && !instance_exists(oTransitionDeath);
}

// Function to determine the next state
function determineNextState()
{
    if (state == STATE.TRANSITION && !isTransitionComplete()) return STATE.TRANSITION;

    if (shouldEnterTransition()) return STATE.TRANSITION;
    if (shouldEnterDash()) return STATE.DASH;
    if (shouldEnterJump()) return STATE.JUMP;
    if (shouldEnterFall()) return STATE.FALL;
    if (shouldEnterClimb()) return STATE.CLIMB;
    if (shouldEnterInteract()) return STATE.INTERACTING;
    if (shouldEnterIdle()) return STATE.IDLE;
    if (shouldEnterWalk()) return STATE.WALK;

    return state; // Stay in current state
}

// Individual state handlers
function handleIdleState()
{
    setSpriteDirection();
    sprite_index = sPlayerIdle;

    playerMovement();

    // Transition
    state = determineNextState();
}

function handleWalkState()
{
    setSpriteDirection();
    sprite_index = sPlayerWalk;

    playerMovement();

    // Transition
    state = determineNextState();
}

function handleJumpState()
{
    if (jump_count == 1) coyote_time = coyote_time_max;
	
    setSpriteDirection();
    sprite_index = sPlayerJump;

    playerMovement();

    // Transition
    state = determineNextState();
}

function handleFallState()
{
    setSpriteDirection();
    sprite_index = sPlayerFall;

    playerMovement();
	
    // Transition
    state = determineNextState();
}

function handleDashState()
{
    setSpriteDirection();
    sprite_index = sPlayerDash;

    playerMovement();

    // Transition
    state = determineNextState();
}

function handleClimbState()
{
    setSpriteDirection();
    sprite_index = sPlayerClimb;

    // Perform climbing logic
    if (up_key)
    {
        if (place_meeting(x - 8, y - climb_spd - 8, oWall) || place_meeting(x + 8, y - climb_spd - 8, oWall))
        {
            if (!place_meeting(x, y - climb_spd, oWall)) y -= climb_spd;
            else while (!place_meeting(x, y - 1, oWall)) y -= 1;
        }
    }
    if (down_key)
    {
        if (place_meeting(x - 8, y + climb_spd + 8, oWall) || place_meeting(x + 8, y + climb_spd + 8, oWall))
        {
            if (!place_meeting(x, y + climb_spd, oWall)) y += climb_spd;
            else while (!place_meeting(x, y + 1, oWall)) y += 1;
        }
    }

    // Transition
    state = determineNextState();
}

function handleDeadState()
{
    instance_create_layer(x, y, "Player", oPlayerDead);
    instance_destroy();
}

function handleInteractingState()
{
    setSpriteDirection();
    sprite_index = sPlayerIdle;

    // Perform interaction logic
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

    if (_success)
        state = determineNextState();
}

function handleTransitionState()
{
    sprite_index = sPlayerIdle;
    xspd = 0;
    yspd = 0;

    // Transition
    if (isTransitionComplete())
    {
        state = determineNextState();
    }
}


function handleNoneState()
{
    playerMovement();

    // Transition
    state = determineNextState();
}