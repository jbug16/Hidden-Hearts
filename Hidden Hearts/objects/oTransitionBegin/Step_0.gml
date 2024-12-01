if (transitioning)
{
	s("transition started");
	radius += spd * spd_increase;
	spd_increase += 0.04;
	
	if (radius >= max_radius)
	{
		radius = max_radius;
		transitioning = false;
		instance_destroy();
		s("transition ended");
	}
}