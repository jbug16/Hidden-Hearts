if (abs(oInteractable.x - oPlayer.x) < 32 && oPlayer.state != STATE.INTERACTING)
{
	// Show Interaction Button
	instance_create_layer(oInteractable.x, oInteractable.y - 16, "Managers", oInteractionBubble);
}
else instance_destroy(oInteractionBubble);

var _x_mid = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5;
var _y_mid = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) * 0.5;
if (oPlayer.dialog_open) instance_create_layer(_x_mid, _y_mid, "UI", oDialogBox);
else instance_destroy(oDialogBox);