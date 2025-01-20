// Get Controls
getControls();
debugControls();

// State Machine
switch (state)
{
    case STATE.IDLE:
        handleIdleState();
        break;

    case STATE.WALK:
        handleWalkState();
        break;

    case STATE.JUMP:
        handleJumpState();
        break;

    case STATE.FALL:
        handleFallState();
        break;

    case STATE.DASH:
        handleDashState();
        break;

    case STATE.CLIMB:
        handleClimbState();
        break;

    case STATE.DEAD:
        handleDeadState();
        break;

    case STATE.INTERACTING:
        handleInteractingState();
        break;

    case STATE.TRANSITION:
        handleTransitionState();
        break;

    case STATE.NONE:
        handleNoneState();
        break;
}