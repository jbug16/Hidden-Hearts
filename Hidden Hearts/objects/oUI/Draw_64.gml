draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(fntUILarge);

// Heart UI
draw_sprite_ext(sHeart, 0, 30, 30, 2, 2, 0, c_white, 1);
draw_text(55, 28, global.shards_collected);