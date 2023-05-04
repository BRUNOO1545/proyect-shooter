///varaibles
randomize();
image_speed = 0;
image_index = 25;
image_xscale = 0.5;
image_yscale = 0.5;
depth = global.gundepth;
throwed = false;
once = true;
rot = 0;

//imagen
limit = 3;
iy = limit;
iys = choose(0, 1);
spd = 0.15;

//tirar
if instance_exists(obj_player)
	{
		if (obj_player.throwguns == true)
			{
				if (obj_player.player_dead == false)
					{
						throwed = true;
						direction = obj_mouse;
						speed = global.gun_spd;
						move_towards_point(obj_mouse.x, obj_mouse.y, speed);
						obj_player.throwguns = false;
					}
				else
					{
						randomize();
						image_angle = random_range(0, 360);
					}
			}
	}