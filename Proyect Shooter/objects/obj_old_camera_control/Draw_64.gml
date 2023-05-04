var cam_x, cam_y, cam_w, cam_h;
cam_x = 0;
cam_y = 0;
cam_w = 1400;
cam_h = 800;

i -= 0.04;
draw_sprite_stretched_ext(spr_bg_pause2, 0, cam_x, cam_y, cam_w, cam_h, c_white, i);