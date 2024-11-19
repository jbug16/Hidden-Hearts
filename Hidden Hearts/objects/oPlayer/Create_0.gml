// Moving
move_spd = 2;
move_dir = 0;
xspd = 0;
yspd = 0;

// Jumping
on_ground = true;
grav = 0.275;
jspd = -5.5;
jump_count = 0;
max_jumps = 2;

// Coyote time
coyote_time = 0;
coyote_time_max = 10;

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