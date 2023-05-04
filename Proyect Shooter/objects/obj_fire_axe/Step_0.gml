image_speed = 0;
image_index = 21;

rot = 10;

//destruir
if instance_exists(obj_player) && (obj_player.cd = true) && (global.gun == 21)
	{
		if collision_circle(x, y - iy, rot,  obj_player, false, false)
			{
				/*//si tiene el arma aumentar balas
				if (global.guntaked == true)
					{
						global.cal762bullets += 30;
					}
				*/
				instance_destroy();
				obj_player.cd = false;
				
				//reproducir el sonido
				audio_play_sound(snd_reload, 0, false);
				audio_sound_gain(snd_reload, global.sfx, 0);
			}
	}

//lanzado
if (throwed == true)
	{
		if (speed < 0)
			{
				speed = 0;
				throwed = false;
			}
		else
			{
				speed -= 0.5;
				image_angle -= speed;
			}
	}

//imagen
if (iy <= -limit)
	{
		iys = 0;
	}

if (iy >= limit)
	{
		iys = 1;
	}

switch iys
	{
		case 0:
			iy += spd;
		break;
		
		case 1:
			iy -= spd;
		break;
	}

/*
//colision obj
var _obj_solid = obj_solid;

//detectar pausa en caso de error
var s = speed;

if (s > 0)
	{
		var pm, cl;
		pm = place_meeting(x + s, y + s, _obj_solid);
		cl = collision_line(x, y, x + s, y + s, _obj_solid, false, false);
		
		if (pm) or (cl)
			{
				//horizontal
				for (var i = 0; i < abs(s); i++)
					{
						if (place_meeting(x + sign(s), y, _obj_solid)) then break;
						x += sign(s);
					}
				
				//vertical
				for (var i = 0; i < abs(s); i++)
					{
						if (place_meeting(x, y + sign(s), _obj_solid)) then break;
						y += sign(s);
					}
				
				//alarm[0] = 2;
				speed = 0;
				throwed = false;
			}
	}