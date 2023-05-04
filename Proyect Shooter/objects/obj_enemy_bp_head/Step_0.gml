/// @description destroy

//lanzado
if (speed > 0)
	{
		speed -= 0.5;
		image_angle -= speed*2;
	}
else
	{
		speed = 0;
		
		if (once_death == true)
			{
				instance_create_depth(x, y, depth - 1, obj_blood);
				once_death = false;
			}
	}