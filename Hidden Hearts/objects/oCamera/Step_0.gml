if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

var _buffer = 20;
x += (xTo - x) / _buffer;
y += (yTo - y) / _buffer;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

// Clouds
if (layer_exists("Clouds1")) layer_hspeed(layer_get_id("Clouds1"), -0.01);
if (layer_exists("Clouds2")) layer_hspeed(layer_get_id("Clouds2"), -0.03);