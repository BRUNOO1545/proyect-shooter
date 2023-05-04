image_index = current_fps;
current_fps += image_speed/2;

image_xscale = imgscl;
image_yscale = imgscl;

if (current_fps > limit)
	{
		fn = true;
	}

if (fn == true)
	{
		instance_destroy();
	}

depth = 30;