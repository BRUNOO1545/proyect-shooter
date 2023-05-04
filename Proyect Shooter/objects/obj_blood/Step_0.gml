image_index = current_fps;
current_fps += image_speed/2;

if (current_fps > limit)
	{
		fn = true;
	}

if (fn == true)
	{
		current_fps = limit;
	}

depth = 4;