/// @description nombre de botones
randomize();

//data
timerl = 230;
once = true;
timer = timerl;
timerdiv = 6;
lvlname = "";
menu_alpha = 0;
xx = 0;
esc_touched = false;

//imagen
hue_spd = 1;
hue = random_range(0, 255);
hue_bg = hue - 32;
hue_bg2 = hue_bg - 64;
color = 0;
color_bg = 0;
color_bg2 = 0;
col_rgb_bight = 0;

//fondo
yu = room_height/2 - 20;
yd = yu - 10;
yspd = 50;
x_str = 0;
x_lmt = 0;
x_spd = 96;

//discord
obj_discord_rich.enemy_killed_counter = true;
global.actual_enemy_killed = 0;