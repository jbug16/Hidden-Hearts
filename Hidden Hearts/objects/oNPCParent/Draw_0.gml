draw_self();

// Set sizes
var _w = 125;
var _h = 50;
var _buff = 5;

var _w_portrait = 50;
var _h_portrait = 50;

// Get coordinates
var _x = ((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5) - _w/2) + 2 + (_w_portrait/2);
var _y = 140;

// Check if player is near NPC
if (abs(self.x - oPlayer.x) < 32)
{
	// Show interaction button
	draw_sprite(sInteractionBubble, 0, self.x, self.y - 24);
}

// Check if interacting
if (is_interacting)
{
	// Draw textbox
	drawTextbox(_x, _y, _w, _h, _w_portrait, _h_portrait);

	// Draw text
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	draw_set_font(fntUI);
	draw_text_ext(_x + _buff, _y, text[text_index], 10, _w - _buff);
}