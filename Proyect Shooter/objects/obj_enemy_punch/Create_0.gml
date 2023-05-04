var tg = instance_nearest(x, y, obj_player);

if instance_exists(tg)
	{
		direction = point_direction(x, y, tg.x, tg.y);
		image_angle = direction;
		speed = 2;

		//bullet collision
		instance_create_depth(x, y, -y, obj_bullet_collision);
		var bc = instance_nearest(x, y, obj_bullet_collision);
		bc.speed = speed;
		instance_destroy(bc);
	}

alarm[0] = 1;