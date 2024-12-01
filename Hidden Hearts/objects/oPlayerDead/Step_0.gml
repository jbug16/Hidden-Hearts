// Player falls of screen
if (y > room_height + 150)
{
	// Restart player at level start
	room_restart();
	
	// Restart score
	global.shards_collected = oGame.shards_at_room_start;
}