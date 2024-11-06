if (abs(oInteractable.x - oPlayer.x) < 32 && oPlayer.state != STATE.INTERACTING)
{
	// Show Interaction Button
	instance_create_layer(oInteractable.x, oInteractable.y - 16, "Managers", oInteractionBubble);
}
else instance_destroy(oInteractionBubble);