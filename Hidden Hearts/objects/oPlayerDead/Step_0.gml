// Player falls of screen
if (y > room_height + 150)
{
	// Restart player at level start
	instance_destroy();
	instance_create_layer(32, 240, "Player", oPlayer);
}