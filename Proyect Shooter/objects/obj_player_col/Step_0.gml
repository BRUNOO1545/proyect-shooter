/// @description x, y

//colision obj
var _obj_solid = obj_solid;

if !(instance_exists(_obj))
	{
		instance_destroy();
	}

//llamar al cript de movimiento
scr_controller_game()

//detectar pausa en caso de error
if (global.resume == 1)
	{
		maxspd = 3;
		vspd = y;
		hspd = x;
		
		global.resume = 0;
	}
else
	{
		var pm, cl;
		pm = place_meeting(x + hs, y + vs, _obj_solid);
		cl = collision_line(x, y, x + hs, y + vs, _obj_solid, false, false);
		
		if (pm) or (cl)
			{
				//horizontal
				for (var i = 0; i < abs(hs); i++)
					{
						if (place_meeting(x + sign(hs), y, _obj_solid)) then break;
						x += sign(hs);
					}
				
				hs = 0;
				
				//vertical
				for (var i = 0; i < abs(vs); i++)
					{
						if (place_meeting(x, y + sign(vs), _obj_solid)) then break;
						y += sign(vs);
					}
				
				vs = 0;
			}
		
		hspeed = hs;
		vspeed = vs;
	}

var ctl = global.controller;

if gamepad_is_connected(ctl)
	{
		if !instance_exists(obj_mouse)
			{
				instance_create_depth(room_width/2, room_height/2, -y, obj_mouse);
			}
		
		//ver con gamepad
		image_angle = point_direction(x, y, obj_mouse.x, obj_mouse.y);
	}
else
	{
		if !instance_exists(obj_mouse)
			{
				instance_create_depth(obj_mouse.x, obj_mouse.y, -y, obj_mouse);
			}
		
		//ver con mouse
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	}


if gamepad_is_connected(ctl)
	{
		//movimientos con gamepad
		
		//deadzone
		gamepad_set_axis_deadzone(ctl, global.gamepad_deadzone);
		
		//horizontal
		if (playerh != 0)
			{
				//speed = maxspd;
				
				if (playerh > 0)
					{
						hs = maxspd;
						angl = 0;
					}
				else
					{
						hs = -maxspd;
						angl = 180;
					}
			}
		else
			{
				hs = 0;
				//speed = 0;
			}
		
		//vertical
		if (playerv != 0)
			{
				//speed = maxspd;
				
				if (playerv > 0)
					{
						vs = maxspd;
						angl = 90;
					}
				else
					{
						vs = -maxspd;
						angl = 270;
					}
			}
		else
			{
				vs = 0;
				//speed = 0;
			}
	}
else
	{
		//movimientos con teclado
		if (playerup)
			{
				vs = -maxspd;
				angl = 90;
			}

		if (playerdown)
			{
				vs = maxspd;
				angl = 270;
			}


		if (playerright)
			{
				hs = maxspd;
				angl = 0;
			}


		if (playerleft)
			{
				hs = -maxspd;
				angl = 180;
			}
		
		if !((playerup) or (playerdown))
			{
				vs = 0;
			}
		
		if !((playerright) or (playerleft))
			{
				hs = 0;
			}
	}