spr = sTransition;
sprw = sprite_get_width(spr);
sprh = sprite_get_height(spr);

xmax = room_width div sprw + 40;
ymax = room_height div sprh + 40;
imax = sprite_get_number(spr);

sub_image_index_inc = sprite_get_speed(spr)/room_speed;
sub_image_index = 0;

col = c_black;