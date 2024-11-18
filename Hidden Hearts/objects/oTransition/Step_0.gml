if (transitioning)
{
	radius += spd * spd_increase;
	spd_increase += 0.02;
	
	if (radius >= max_radius)
	{
		radius = max_radius;
		transitioning = false;
		instance_destroy();
	}
}