if (event_data[? "event_type"] == "sequence event")
{
	switch (event_data[? "message"])
	{
		case "transition_start":
			s("TRANSITION START");
		break;
		
		case "transition_end":
			instance_destroy();
			s("TRANSITION END");
		break;
	}
}