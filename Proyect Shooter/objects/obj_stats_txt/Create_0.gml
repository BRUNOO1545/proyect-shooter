/// @description data

randomize();
cy = 68;
limit = 18;
op = 0;
newline = 24;
hue = random_range(0, 255);
rgb = 0;
_bg_alp = 1;

//stat
stat[0] = string(global.txt70);
stat[1] = string(global.txt71);
stat[2] = string(global.txt73);
stat[3] = string(global.txt74);
stat[4] = string(global.txt72);
stat[5] = string(global.txt75) + " " + string(global.txt161);
stat[6] = string(global.txt75) + " " + string(global.txt162);
stat[7] = string(global.txt75) + " " + string(global.txt163);
stat[8] = string(global.txt75) + " " + string(global.txt164);
stat[9] = string(global.txt75) + " " + string(global.txt165);
stat[10] = string(global.txt75) + " " + string(global.txt166);
stat[11] = string(global.txt75) + " " + string(global.txt167);
stat[12] = string(global.txt75) + " " + string(global.txt168);
stat[13] = string(global.txt75) + " " + string(global.txt169);
stat[14] = string(global.txt156);
stat[15] = string(global.txt157);
stat[16] = string(global.txt158);
stat[17] = string(global.txt141);
stat[18] = string(global.txt176);

//data
data[0] = string(round(global.user_deaths));
data[1] = string(round(global.user_kills));
data[2] = string(round(global.gun_taked));
data[3] = string(round(global.gun_dropped));
data[4] = string(round(global.user_shoots));
data[5] = string(round(global.shoot_cal9));
data[6] = string(round(global.shoot_cal12));
data[7] = string(round(global.shoot_cal20));
data[8] = string(round(global.shoot_cal556));
data[9] = string(round(global.shoot_cal762));
data[10] = string(round(global.shoot_cal50ae));
data[11] = string(round(global.shoot_cal45acp));
data[12] = string(round(global.shoot_cal545));
data[13] = string(round(global.shoot_cal357));
data[14] = string(round(global.enemy_arms));
data[15] = string(round(global.enemy_heads));
data[16] = string(round(global.enemy_destroyed));
data[17] = string(round(global.enemy_electroshocked));
data[18] = string(round(global.enemy_drilled));