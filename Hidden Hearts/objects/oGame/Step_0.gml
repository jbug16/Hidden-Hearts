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

// Backgrounds
moveClouds();
if (room == rTown) parallaxBackground();

// Back and white settings
var _fx_bw_full = fx_create("_filter_greyscale");
var _fx_bw_third = fx_create("_filter_greyscale");
var _fx_bw_half = fx_create("_filter_greyscale");
var _fx_bw_none = fx_create("_filter_greyscale");
fx_set_parameter(_fx_bw_full, "g_Intensity", 1);
fx_set_parameter(_fx_bw_third, "g_Intensity", 2/3);
fx_set_parameter(_fx_bw_half, "g_Intensity", 1/3);
fx_set_parameter(_fx_bw_none, "g_Intensity", 0);

if (room == rTown or room == rTownLevel1 or room == rTownLevel2 or room == rTownLevel3 or room == rTownLevel4)
{
	layer_set_fx("BW", _fx_bw_full);
}
else if (room == rSchool or room == rSchoolLevel2 or room == rSchoolLevel1 or room == rSchoolLevel3 or room == rSchoolLevel4)
{
	layer_set_fx("BW", _fx_bw_third);
}
else if (room == rPark or room == rParkLevel1 or room == rParkLevel2 or room == rParkLevel3 or room == rParkLevel4)
{
	layer_set_fx("BW", _fx_bw_half);
}
else if (room == rSummit)
{
	layer_set_fx("BW", _fx_bw_none);
}