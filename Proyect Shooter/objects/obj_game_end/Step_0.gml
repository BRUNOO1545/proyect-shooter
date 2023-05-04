if (timer < -1)
	{
		game_end();
	}
else
	{
		timer -= 0.1;
	}

//canshow
switch timer
	{
		case timerdiv:
			if (global.gicForceFullscreen == "True")
				{
					window_set_fullscreen(false);
				}
			
			canshow = false;
		break;
	}