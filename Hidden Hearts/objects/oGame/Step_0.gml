// Fullscreen on HTML5
if (os_browser != browser_not_a_browser) 
{
	// check if display is larger than the window
	if (display_get_width()!= window_get_width())
	{
		// resize window to display
		window_set_size(display_get_width(),display_get_height());
	}
}

// Clouds
if (layer_exists("Clouds1")) layer_hspeed(layer_get_id("Clouds1"), -0.01);
if (layer_exists("Clouds2")) layer_hspeed(layer_get_id("Clouds2"), -0.03);

// Mountains
if (layer_exists("Mountains")) layer_x("Mountains", x * 0.05);

// Trees
if (layer_exists("TreesBack")) layer_x("TreesBack", x * 0.05);
if (layer_exists("TreesMid")) layer_x("TreesMid", x * 0.03);

// Houses
if (layer_exists("HousesBack")) layer_x("HousesBack", x * 0.05);