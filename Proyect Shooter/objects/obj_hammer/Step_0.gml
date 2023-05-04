image_speed = 0;
image_index = 27;

rot = 10;

//destruir
if instance_exists(obj_player) && (obj_player.cd = true) && (global.gun == 27)
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