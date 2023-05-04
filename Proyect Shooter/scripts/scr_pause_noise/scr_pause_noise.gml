function scr_pause_noise(){
/*
	if (global.pause_noise < 0) or (global.pause_noise > 3)
		{
			global.pause_noise = 1;
		}*/

	switch global.pause_noise
		{
			//bajo
			case 0:
				amount = 5;
			break;
			
			//medio
			case 1:
				amount = 10;
			break;
			
			//alto
			case 2:
				amount = 30;
			break;
			
			//ultra
			case 3:
				amount = 50;
			break;
			
			//default
			default:
				amount = 99999999999999999;
			break;
		}

}