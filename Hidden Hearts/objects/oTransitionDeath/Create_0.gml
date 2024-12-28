spr = sTransition;
sprw = sprite_get_width(spr);
sprh = sprite_get_height(spr);

cam_width = room_width;
cam_height = room_height;

xmax = cam_width div sprw + 40;
ymax = cam_height div sprh + 40;
imax = sprite_get_number(spr);

sub_image_index_inc = sprite_get_speed(spr)/game_get_speed(gamespeed_fps);
sub_image_index = 0;

col = c_black;