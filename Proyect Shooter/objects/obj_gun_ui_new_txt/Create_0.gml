scr_gun_reset();
randomize();
maxgun = 35;
gun = 0;
limit = 16;
iy = limit;
iys = choose(0, 1);
spd = 0.15;
hue = random_range(0, 255);

//blackbg
blkbg_alpha = 1;
blkbg_alpha_speed = 0.05;

//gun data selector
gdGun_SelectorPos = 0;
gdGun_SelectorPosMax = 5;
gdGun_Show = gdGun_SelectorPos;
gdGun_ShowMax = 0;

//tipo de arma
gdGun_Type[0] = string(global.txt170);
gdGun_Type[1] = string(global.txt171);
gdGun_Type[2] = string(global.txt172);
gdGun_Type[3] = string(global.txt173);
gdGun_Type[4] = string(global.txt174);
gdGun_Type[5] = string(global.txt175);

//shotguns
gdGun_ShotgunMax = 6;
gdGun_Shotgun[0] = 0;
gdGun_Shotgun[1] = 2;
gdGun_Shotgun[2] = 7;
gdGun_Shotgun[3] = 20;
gdGun_Shotgun[4] = 24;
gdGun_Shotgun[5] = 30;
gdGun_Shotgun[6] = 40;

//assault rifles
gdGun_AssaultMax = 5;
gdGun_Assault[0] = 1;
gdGun_Assault[1] = 4;
gdGun_Assault[2] = 9;
gdGun_Assault[3] = 18;
gdGun_Assault[4] = 25;
gdGun_Assault[5] = 31;

//Subfusil
gdGun_SubfusilMax = 7;
gdGun_Subfusil[0] = 3;
gdGun_Subfusil[1] = 5;
gdGun_Subfusil[2] = 6;
gdGun_Subfusil[3] = 8;
gdGun_Subfusil[4] = 11;
gdGun_Subfusil[5] = 12;
gdGun_Subfusil[6] = 13;
gdGun_Subfusil[7] = 39;

//pistol
gdGun_PistolMax = 4;
gdGun_Pistol[0] = 10;
gdGun_Pistol[1] = 16;
gdGun_Pistol[2] = 19;
gdGun_Pistol[3] = 29;
gdGun_Pistol[4] = 35;

//Hand
gdGun_HandMax = 9;
gdGun_Hand[0] = 14;
gdGun_Hand[1] = 15;
gdGun_Hand[2] = 17;
gdGun_Hand[3] = 21;
gdGun_Hand[4] = 22;
gdGun_Hand[5] = 23;
gdGun_Hand[6] = 26;
gdGun_Hand[7] = 27;
gdGun_Hand[8] = 28;
gdGun_Hand[9] = 36;

//Special
gdGun_SpecialMax = 4;
gdGun_Special[0] = 32;
gdGun_Special[1] = 33;
gdGun_Special[2] = 34;
gdGun_Special[3] = 37;
gdGun_Special[4] = 38;
