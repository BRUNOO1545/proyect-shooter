//depth
depth = -y;

image_speed = 0.4;

//rgb
is_gun = false;
is_enemy = false;
scr_isgun()

//ocultar si no existe el jugador
if !instance_exists(obj_player)
	{
		if (image_alpha <= 0)
			{
				image_alpha = 0;
			}
		else
			{
				image_alpha -= 0.06;
			}
	}
else
	{
		if (image_alpha >= 1)
			{
				image_alpha = 1;
			}
		else
			{
				image_alpha += 0.03;
			}
	}

//llamar al script del joystick
scr_controller_support()

//crear una variable de controlador
var ctl = global.controller;

//existe
var pe = instance_exists(obj_player);

if gamepad_is_connected(ctl)
	{
		//movimientos con gamepad
		scr_controller_game()
		
		//deadzone
		gamepad_set_axis_deadzone(ctl, global.gamepad_deadzone);
		
		//detectar pausa en caso de error
		if (global.resumemouse == 1)
			{
				maxspd = 4 * global.gamepad_sens;
				restspd = maxspd;
				squaremax = 160;
				hspd = x;
				vspd = y;
				
				global.resumemouse = 0;
			}
		else
			{
				x = hspd;
				y = vspd;
			}
		
		
		if (pe)
			{
				//limites
				if (hspd >= obj_player.x + squaremax)
					{
						hspd -= restspd;
					}
		
				if (hspd <= obj_player.x - squaremax)
					{
						hspd += restspd;
					}
		
				if (vspd >= obj_player.y + squaremax)
					{
						vspd -= restspd;
					}
		
				if (vspd <= obj_player.y - squaremax)
					{
						vspd += restspd;
					}
		
		
				//horizontal
				if (playerrh != 0)
					{
						speed = maxspd;
				
						if (playerrh > 0)
							{
								hspd += maxspd;
							}
						else
							{
								hspd -= maxspd;
							}
					}
				else
					{
						speed = 0;
					}
		
				//vertical
				if (playerrv != 0)
					{
						speed = maxspd;
				
						if (playerrv > 0)
							{
								vspd += maxspd;
							}
						else
							{
								vspd -= maxspd;
							}
					}
				else
					{
						speed = 0;
					}
			}
	}
else
	{
		//mouse
		if (pe)
			{
				x = mouse_x;
				y = mouse_y;
			}
	}
/*
//limites max
scr_controller_game()

if (playerview)
	{
		squaremax = 400;
		camera_set_view_target(view_camera[0], object_index);
	}
else
	{
		squaremax = 160;
		camera_set_view_target(view_camera[0], obj_player);
	}