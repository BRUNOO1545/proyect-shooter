/// @description var state
randomize();
state = choose("quiet", "walk");
coll = false;
hspd = x;
vspd = y;
speed = 1;
spd = speed;
imgxcale = 1.5;
global.enemy_xcale = imgxcale;
sv = false;
svver = false;
svtimer = random_range(30, 300);
rw = false;
rwtimer = random_range(30, 300);
ktimer = 300;
knock = false;
once = true;
wt = false;
rimg = false;
enemy_tased = false;
enemy_tasing = false;
enemy_taser_can_punch = true;
enemy_drilled = false;
enemy_drilling = false;
global.imgang = 0;
global.enemy_direction = direction;
gun = "";
drop_gun = irandom_range(0, 36);
enemy_knifed = false;
global.gun_type_to_enemy = "hand";

state_data = false;