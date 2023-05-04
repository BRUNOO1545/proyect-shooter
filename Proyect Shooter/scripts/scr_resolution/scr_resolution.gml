function scr_resolution(){

	switch global.resolution
		{
			//1280x720
			case 0:
				window_width = 1280;
				window_height = 636;
			break;
			
			//1366x768
			case 1:
				window_width = 1366;
				window_height = 680;
			break;
			
			//300x600
			case 2:
				window_width = 1920;
				window_height = 1080;
			break;
		}

	surface_resize(application_surface, window_width, window_height);

}