depth = 3;
image_speed = 0;
image_angle = ia;
image_xscale = ix;
image_yscale = ix;

if (once == true)
	{
		//image index
		randomize();
		image_index = irandom_range(0, 2);
		
		//data
		once = false;
		
		//gore
		instance_create_depth(x, y, 4, obj_blood_tipes);
		//scr_create_gore_player();
		
		//gamepad vibration
		scr_controller_vibration()
	}

//rotar
if (speed >= 0)
	{
		speed = 0;

		//sangle
		if (once_blood == true)
			{
				//data
				once_blood = false;
		
				//gore
				scr_create_gore_player();
			}
	}
else
	{
		speed += 0.5;
		instance_create_depth(x, y, 4, obj_blood_tipes_2);
	}