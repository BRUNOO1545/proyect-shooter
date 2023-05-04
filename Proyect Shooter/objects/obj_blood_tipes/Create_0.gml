//destruir si no es arma enemiga
if (global.gun_type_to_enemy == "taser")
	{
		instance_destroy();
	}

randomize();
depth = 4;
limit = 1;
current_fps = irandom_range(0, limit);

//angulo de disparo
var ed = instance_nearest(x, y, obj_bullet_collision);

if (instance_exists(ed))
	{
		if (instance_exists(obj_player)) && (obj_player.player_dead == false)
			{
				ia = ed.image_angle + 270 + random_range(-10, 10);
			}
		else
			{
				ia = global.player_ang + 90 + random_range(-10, 10);
			}
	}
else
	{
		ia = random_range(-10, 10);
	}

image_angle = ia;
image_speed = 0;
image_index = current_fps;

//auto delete
switch global.detail_delete
	{
		//desactivado
		case 0:
			dtimer = 0;
		break;
		
		//2s
		case 1:
			dtimer = 120;
		break;
		
		//5s
		case 2:
			dtimer = 300;
		break;
		
		//10s
		case 3:
			dtimer = 600;
		break;
	}

//destruir bala cercana
instance_destroy(ed);