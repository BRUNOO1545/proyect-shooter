/// @description aumentar balas segun imagen
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;
image_index = rimg;
depth = 2;

if collision_rectangle(x - ver, y - ver - iy, x + ver, y + ver - iy, obj_player, false, false)
	{
		switch image_index
			{
				//cal 762
				case 0:
					global.cal762bulletsmax += r762;
				break;
				
				//cal 9
				case 1:
					global.cal9bulletsmax += r9;
				break;
				
				//cal 556
				case 2:
					global.cal556bulletsmax += r556;
				break;
				
				//cal 20
				case 3:
					global.cal20bulletsmax += r20;
				break;
				
				//cal 12
				case 4:
					global.cal12bulletsmax += r12;
				break;
				
				//cal 50 ae
				case 5:
					global.cal50aebulletsmax += r50ae;
				break;
				
				//cal 45 acp
				case 6:
					global.cal45acpbulletsmax += r45acp;
				break;
				
				//cal 545
				case 7:
					global.cal545bulletsmax += r545;
				break;
				
				//cal 357
				case 8:
					global.cal357bulletsmax += r357;
				break;
			}
		
		//sonido y destruir
		rtaked = true;
		audio_play_sound(snd_reload, 0, false);
		audio_sound_gain(snd_reload, global.sfx, 0);
		
		//score
		obj_gunbar.player_score += 50;
		
		instance_destroy();
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