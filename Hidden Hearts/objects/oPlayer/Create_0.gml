// Moving
move_spd = 1;
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

// Interactions
dialog_open = false;

// States
enum STATE
{
	IDLE,
	WALK,
	JUMP,
	FALL,
	DASH,
	CLIMB,
	DEAD,
	INTERACTING,
	NONE
}

state = STATE.IDLE;