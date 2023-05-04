if gamepad_is_connected(global.controller)
	{
		//variables
		scr_controller_check()

		//pov
		if (ctl_left)
			{
				iipov = 3;
			}

		if (ctl_right)
			{
				iipov = 4;
			}

		if (ctl_up)
			{
				iipov = 5;
			}

		if (ctl_down)
			{
				iipov = 6;
			}

		if !(ctl_left or ctl_right or ctl_up or ctl_down)
			{
				iipov = 16;
			}


		//buttons
		if (ctl_a)
			{
				iibta = c_gray;
			}
		else
			{
				iibta = c_white;
			}

		if (ctl_b)
			{
				iibtb = c_gray;
			}
		else
			{
				iibtb = c_white;
			}

		if (ctl_x)
			{
				iibtx = c_gray;
			}
		else
			{
				iibtx = c_white;
			}

		if (ctl_y)
			{
				iibty = c_gray;
			}
		else
			{
				iibty = c_white;
			}
	}