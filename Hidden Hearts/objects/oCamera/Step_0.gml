if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

// Clouds
if (layer_exists("Clouds1")) layer_hspeed(layer_get_id("Clouds1"), -0.01);
if (layer_exists("Clouds2")) layer_hspeed(layer_get_id("Clouds2"), -0.03);

// Mountains
if (layer_exists("Large_Mountains")) layer_x("Large_Mountains", x * 0.05);
if (layer_exists("Med_Mountains")) layer_x("Med_Mountains", x * 0.05);
if (layer_exists("Small_Mountains")) layer_x("Small_Mountains", x * 0.05);

// Trees
if (layer_exists("BackTrees")) layer_x("BackTrees", x * 0.05);
if (layer_exists("BackBackTrees")) layer_x("BackBackTrees", x * 0.05);