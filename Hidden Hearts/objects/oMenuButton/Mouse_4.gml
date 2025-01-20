switch (button)
{
	case MENU.PLAY:
		room_goto(rTown);
		break;
		
	case MENU.X:
		url_open("https://x.com/jbug16games");
		break;
		
	case MENU.YOUTUBE:
		url_open("https://www.youtube.com/@jbug_16");
		break;
	
	case MENU.ITCH:
		url_open("https://jbug16.itch.io/");
		break;
}

audio_play_sound(sndClick, 1, false);