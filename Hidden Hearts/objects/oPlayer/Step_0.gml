// Get Controls
getControls();

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

if (yspd > term_vel) yspd = term_vel;

if (jump_key_pressed && place_meeting(x, y + 1, oWall))
{
	yspd = jspd;
}

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