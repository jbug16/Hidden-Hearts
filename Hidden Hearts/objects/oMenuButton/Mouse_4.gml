switch (button)
{
	case MENU.PLAY:
		room_goto(rTown);
		break;
		
	case MENU.CREDITS:
		room_goto(rCredits);
		break;
		
	case MENU.QUIT:
		game_end();
		break;
}

audio_play_sound(sndClick, 1, false);