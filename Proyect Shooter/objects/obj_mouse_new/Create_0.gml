//imagen
image_alpha = 0;
image_speed = 0.4;

//velocidad de movida
maxspd = 10 * global.gamepad_sens;

//velocidad de vuelta
restspd = 5;

//maximo de cuadrado
squaremax = 160;

//puede mover
hmove_max = true;
hmove_min = true;
vmove_max = true;
vmove_min = true;

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