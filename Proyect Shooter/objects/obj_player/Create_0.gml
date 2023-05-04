//controller
alarm[2] = 1;
/*
maxspd = 3;
vspd = y;
hspd = x;*/

//test
_obj = obj_player_col;
x = _obj.x;
y = _obj.y;

imgxcale = 1.5;
reload = false;
reloadtimermax = 60;
global.resume = 0;
player_killed = false;
player_using_shield = false;
player_shield_col_deleted = false;
is_hand_gun = false;

//angulo del jugador
var ctl = global.controller;

if gamepad_is_connected(ctl)
	{
		//ver con gamepad
		if instance_exists(obj_mouse)
			{
				image_angle = point_direction(x, y, obj_mouse.x, obj_mouse.y);
			}
	}
else
	{
		//ver con mouse
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	}

//uso entre cadaver y jugador
global.player_ang = image_angle;
global.pimgxcale = imgxcale;

//tirar armas
global.gun_spd = 20;
throwguns = false;
player_dead = false;

//armas al 0
global.gun = -1;
scr_gun_reset();

//puede disparar
canshoot = true;

//armas can destroy
cd = false;

if (global.gun == -1)
	{
		global.guntaked = false;
	}
else
	{
		global.guntaked = true;
	}

//si no tiene arma cambiar de imagen
if (global.gun == -1)
	{
		sprite_index = spr_player_nogun;
	}
else
	{
		sprite_index = spr_player_test;
	}

//no crasheo con humo
tipe = "";
