if (not surface_exists(surf)) 
{
	surf = surface_create(display_get_gui_width(), display_get_gui_height());    
}

surface_set_target(surf)

draw_clear(c_black);
gpu_set_blendmode(bm_subtract);
draw_circle(oPlayer.x, oPlayer.y, radius, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(surf, 0, 0);