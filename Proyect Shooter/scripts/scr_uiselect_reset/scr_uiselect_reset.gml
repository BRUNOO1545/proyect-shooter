function scr_uiselect_reset(){
	
	if (global.UiDataRead == true)
		{
			var col_val = global.gicUiSelectedIntensity;
			
			//menu
			global.UiGameStarted = false;
			global.UiSelected_color = make_color_rgb(col_val, col_val, col_val);
			global.UiSelected_MainMenu = 0;
			
			//config
			global.UiSelected_Config = 0;
			global.UiSelected_ConfigGraphics = 0;
			global.UiSelected_ConfigGamepad = 0;
			global.UiSelected_ConfigAccesibility = 0;
			
			//load finished
			global.UiDataRead = false;
		}
	else
		{
			//menu
			if (global.UiGameStarted == true)	
				{
					global.UiSelected_MainMenu = 0;
				}
	
			//config
			global.UiSelected_Config = 0;
			global.UiSelected_ConfigGraphics = 0;
			global.UiSelected_ConfigGamepad = 0;
			global.UiSelected_ConfigAccesibility = 0;
		}

}