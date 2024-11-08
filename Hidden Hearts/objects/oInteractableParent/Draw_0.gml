draw_self();

// set sizes
var _w = 125;
var _h = 50;
var _buff = 5;

var _w_portrait = 50;
var _h_portrait = 50;

// get coordinates
var _x = ((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) * 0.5) - _w/2) + 2 + (_w_portrait/2);
var _y = 140;

// check if player is close to NPC
if (abs(self.x - oPlayer.x) < 32)
{
	// show interaction bubble
	if (oPlayer.state != STATE.INTERACTING)
	{
		s(self.x);
		draw_sprite(sInteractionBubble, 0, self.x, self.y - 16);
	}
	// draw textboxes
	else if (oPlayer.state == STATE.INTERACTING)
	{
		// draw textbox
		draw_sprite_stretched(sDialogueBox, 0, _x, _y, _w, _h);

		// draw portrait
		draw_sprite_stretched(sDialogueBox, 0, _x - _w_portrait - 2, _y, _w_portrait, _h_portrait);

		// draw text
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_black);
		draw_set_font(fntUI);
		draw_text_ext(_x + _buff, _y, text[text_index], 10, _w - _buff);
	}
}