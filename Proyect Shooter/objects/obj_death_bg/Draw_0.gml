draw_self();
draw_set_font(fnt_6);
draw_set_color(c_white);
draw_set_halign(fa_center);

var xcam, ycam;
xcam = camera_get_view_x(view_camera[0]);
ycam = camera_get_view_y(view_camera[0]);

//texto
var xsep = 2;

//org
/*
draw_text_color(xcam + 1366/2 - xsep, ycam + 150, string(global.txt56), c_black, c_black, c_black, c_black, image_alpha);
draw_text_color(xcam + 1366/2 + xsep, ycam + 150, string(global.txt56), c_white, c_white, c_white, c_white, image_alpha);
*/

draw_text_color(xcam + 1366/2 - xsep, ycam + 20, string(global.txt56), c_black, c_black, c_black, c_black, image_alpha);
draw_text_color(xcam + 1366/2 + xsep, ycam + 20, string(global.txt56), c_white, c_white, c_white, c_white, image_alpha);


//helpers
scr_controller_img()

draw_set_font(fnt_1);
draw_set_color(c_white);
draw_set_halign(fa_left);

//enter
draw_sprite_ext(ui, 27, xcam + 15, ycam + 630, 1, 1, 0, c_white, image_alpha);
draw_text_color(xcam + 55, ycam + 632, string(global.txt27), c_white, c_white, c_white, c_white, image_alpha);