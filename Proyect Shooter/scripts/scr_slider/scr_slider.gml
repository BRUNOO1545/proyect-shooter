function scr_slider(){
	
	switch (room)
		{
			#region //musica
			
			case music_room:
				switch global.music
					{
						case 1:
							subimg = 0;
						break;
		
						case 0.9:
							subimg = 1;
						break;
		
						case 0.8:
							subimg = 2;
						break;
		
						case 0.7:
							subimg = 3;
						break;
		
						case 0.6:
							subimg = 4;
						break;
		
						case 0.5:
							subimg = 5;
						break;
		
						case 0.4:
							subimg = 6;
						break;
		
						case 0.3:
							subimg = 7;
						break;
		
						case 0.2:
							subimg = 8;
						break;
		
						case 0.1:
							subimg = 9;
						break;
		
						case 0:
							subimg = 10;
						break;
					}
			break;
			
			#endregion
	
			#region //sfx
			
			case sfx_room:
				switch global.sfx
					{
						case 1:
							subimg = 0;
						break;
		
						case 0.9:
							subimg = 1;
						break;
		
						case 0.8:
							subimg = 2;
						break;
		
						case 0.7:
							subimg = 3;
						break;
		
						case 0.6:
							subimg = 4;
						break;
		
						case 0.5:
							subimg = 5;
						break;
		
						case 0.4:
							subimg = 6;
						break;
		
						case 0.3:
							subimg = 7;
						break;
		
						case 0.2:
							subimg = 8;
						break;
		
						case 0.1:
							subimg = 9;
						break;
		
						case 0:
							subimg = 10;
						break;
					}
			break;
			
			#endregion
	
			#region //deadzone l
			
			case deadzone_room:
				switch global.gamepad_deadzone
					{
						case 0.7:
							subimg = 0;
						break;
		
						case 0.6:
							subimg = 1;
						break;
		
						case 0.5:
							subimg = 2;
						break;
		
						case 0.4:
							subimg = 3;
						break;
		
						case 0.3:
							subimg = 4;
						break;
		
						case 0.2:
							subimg = 5;
						break;
		
						case 0.1:
							subimg = 6;
						break;
					}
			break;
			
			#endregion
	
			#region //sensibility
			
			case sens_room:
				switch global.gamepad_sens
					{
						case 6:
							subimg = 0;
						break;
		
						case 5:
							subimg = 1;
						break;
		
						case 4:
							subimg = 2;
						break;
		
						case 3:
							subimg = 3;
						break;
		
						case 2:
							subimg = 4;
						break;
		
						case 1:
							subimg = 5;
						break;
					}
			break;
			
			#endregion
	
			#region //velocity
			
			case velocity_room:
				switch global.gamepad_velocity
					{
						case 6:
							subimg = 0;
						break;
		
						case 5:
							subimg = 1;
						break;
		
						case 4:
							subimg = 2;
						break;
		
						case 3:
							subimg = 3;
						break;
		
						case 2:
							subimg = 4;
						break;
		
						case 1:
							subimg = 5;
						break;
					}
			break;
			
			#endregion
			
			#region //vibration amount
			
			case vibrationamount_room:
				switch global.gamepad_vibration_amount
					{
						case 1:
							subimg = 0;
						break;
		
						case 0.9:
							subimg = 1;
						break;
		
						case 0.8:
							subimg = 2;
						break;
		
						case 0.7:
							subimg = 3;
						break;
		
						case 0.6:
							subimg = 4;
						break;
		
						case 0.5:
							subimg = 5;
						break;
		
						case 0.4:
							subimg = 6;
						break;
		
						case 0.3:
							subimg = 7;
						break;
		
						case 0.2:
							subimg = 8;
						break;
		
						case 0.1:
							subimg = 9;
						break;
		
						case 0:
							subimg = 10;
						break;
					}
			break;
			
			#endregion
		}
}