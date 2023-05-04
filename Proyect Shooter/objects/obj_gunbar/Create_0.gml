image_alpha = 0;
color = c_white;

limit_64bits = 18446744073709551616;

//score
randomize();
hue = random_range(0, 255);
col = 0;
col2 = c_black;
colspd = 1;
player_score = 0;
player_score_limit = limit_64bits;

//txt Y
limit = 5;
iy = limit;
iys = choose(0, 1);
spd = 0.15;

//bg
randomize();
colored_bg = false;
hue = random_range(0, 255);
hue_spd = 0.3;