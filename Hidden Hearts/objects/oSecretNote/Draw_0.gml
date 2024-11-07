// Show Interaction Button
if (abs(self.x - oPlayer.x) < 32 && oPlayer.state != STATE.INTERACTING)
{
	draw_sprite(sInteractionBubble, 0, self.x, self.y - 16);
}

// Draw Note
var _x_mid = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5;
var _y_mid = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) * 0.5;

if (dialog_open)
{
	draw_set_font(fntUI);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	
	draw_sprite(sNoteBackground, 0, _x_mid, _y_mid);
	draw_text_ext(_x_mid, _y_mid, note_text[0], 14, 75);
}