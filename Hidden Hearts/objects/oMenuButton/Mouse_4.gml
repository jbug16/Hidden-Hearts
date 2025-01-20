switch (button)
{
	case MENU.PLAY:
		room_goto(rTown);
		break;
		
	case MENU.X:
		url_open_ext("https://x.com/jbug16games", "_blank");
		break;
		
	case MENU.YOUTUBE:
		url_open_ext("https://www.youtube.com/@jbug_16", "_blank");
		break;
	
	case MENU.ITCH:
		url_open_ext("https://jbug16.itch.io/", "_blank");
		break;
}

audio_play_sound(sndClick, 1, false);