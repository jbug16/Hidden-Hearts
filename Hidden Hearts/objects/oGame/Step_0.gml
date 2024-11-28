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