if (other.yspd < 0) 
{
	audio_play_sound(sndJump, 1, false);
	sprite_index = sBouncePadJump;
}