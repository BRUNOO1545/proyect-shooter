//imagen
image_alpha = 0;
image_speed = 0.4;
depth = -y;

//velocidad de movida
maxspd = 4 * global.gamepad_sens;

//velocidad de vuelta
restspd = maxspd;

//maximo de cuadrado
squaremax = 160;

//x, y
if instance_exists(obj_player)
	{
		hspd = obj_player.x;
		vspd = obj_player.y;
	}

//pausa
global.resumemouse = 0;

//rgb
color = random_range(0, 255);
hue = random_range(0, 255);
is_gun = false;
is_enemy = false;

//test
mouse_col_with = "None";