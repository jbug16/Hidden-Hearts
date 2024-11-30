function parallaxBackground()
{
	// Mountains
	if (layer_exists("Mountains")) layer_x("Mountains", x * 0.05);

	// Trees
	if (layer_exists("TreesBack")) layer_x("TreesBack", x * 0.05);
	if (layer_exists("TreesMid")) layer_x("TreesMid", x * 0.03);

	// Houses
	if (layer_exists("HousesBack")) layer_x("HousesBack", x * 0.05);
}

function moveClouds()
{
	if (layer_exists("Clouds1")) layer_hspeed(layer_get_id("Clouds1"), -0.01);
	if (layer_exists("Clouds2")) layer_hspeed(layer_get_id("Clouds2"), -0.03);
}