can_walk = false;
timer = 10 * game_get_speed(gamespeed_fps);

cam_start_x = camera_get_view_width(view_camera[0]) + camera_get_view_x(view_camera[0]);
cam_start_y = camera_get_view_height(view_camera[0]) + camera_get_view_y(view_camera[0]);

max_radius = max(cam_start_x, cam_start_y);
radius = 0;

spd = 5;
spd_increase = 0;

transitioning = true;
surf = -1;