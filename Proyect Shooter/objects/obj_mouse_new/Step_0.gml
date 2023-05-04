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
				maxspd = 10;
				restspd = 10;
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
						hmove_max = false;
						hspd -= restspd;
					}
				else
					{
						hmove_max = true;	
					}
		
				if (hspd <= obj_player.x - squaremax)
					{
						hmove_min = false;
						hspd += restspd;
					}
				else
					{
						hmove_min = true;
					}
		
				if (vspd >= obj_player.y + squaremax)
					{
						vmove_max = false;
						vspd -= restspd;
					}
				else
					{
						vmove_max = true;
					}
		
				if (vspd <= obj_player.y - squaremax)
					{
						vmove_min = false;
						vspd += restspd;
					}
				else
					{
						vmove_min = true;
					}
				
				
				//horizontal
				if (playerrh != 0)
					{
						if (playerrh > 0)
							{
								if (hmove_max == true)
									{
										hspd += maxspd;
										speed = maxspd;
									}
							}
						else
							{
								if (hmove_min == true)
									{
										hspd -= maxspd;
										speed = maxspd;
									}
							}
					}
				else
					{
						speed = 0;
					}
		
				//vertical
				if (playerrv != 0)
					{
						if (playerrv > 0)
							{
								if (vmove_max == true)
									{
										vspd += maxspd;
										speed = maxspd;
									}
							}
						else
							{
								if (vmove_min == true)
									{
										vspd -= maxspd;
										speed = maxspd;
									}
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