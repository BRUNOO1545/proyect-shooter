/// @description bg
var sx, sy, sx_max, sy_max, rd;
sx = 0 + camera_get_view_x(view_camera[0]);
sy = 0 + camera_get_view_y(view_camera[0]);
sx_max = 1366 + camera_get_view_x(view_camera[0]);
sy_max = 680 + camera_get_view_y(view_camera[0]);
rd = 64;

col = make_color_hsv(hue, sat, 64);
//col2 = col;
col2 = make_color_hsv(hue, sat, 32);
draw_rectangle_color(sx - rd, sy - rd, sx_max + rd, sy_max + rd, col, col, col2, col2, false);