// Moving
move_spd = room == rTown ? 1.5 : 2;
move_dir = 0;
xspd = 0;
yspd = 0;

// Jumping
grav = 0.275;
jspd = room == rTown ? -4 : -5.5;
jump_count = 0;
max_jumps = 1;

// Coyote time
coyote_time_max = 5;
coyote_time = coyote_time_max;

// Climbing
climbing = false;
climb_spd = 1;

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