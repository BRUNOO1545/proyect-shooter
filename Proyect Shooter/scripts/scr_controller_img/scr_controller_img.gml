function scr_controller_img(){

	//llamar a la global
	scr_gameinitconfig()
	scr_controller_support()
	
	var ctl = global.controller;
	var limit_xbox = 4;
	var limit_ps = 3;
	
	//xbox limits
	if (global.xboxui > limit_xbox) or (global.xboxui < 0)
		{
			global.xboxui = 0;
			
			//guardar
			ini_open("user/data.ini")
			ini_write_real("config", "xbox_ui", 0)
			ini_close();
		}
	
	//ps limits
	if (global.psui > limit_ps) or (global.psui < 0)
		{
			global.psui = 0;
			
			//guardar
			ini_open("user/data.ini")
			ini_write_real("config", "ps_ui", 0)
			ini_close();
		}
	
	if gamepad_is_connected(ctl)
		{
			if (ctl = 0)
				{
					//switch xbox
					switch (global.xboxui)
						{
							//xbox universal
							case 0:
								ui = spr_ui_xboxbuttons_universal;
							break;
							
							//xbox universal style 2
							case 1:
								ui = spr_ui_xboxbuttons_universal_style_2;
							break;
							
							//xbox 360
							case 2:
								ui = spr_ui_xboxbuttons;
							break;
							
							//xbox one
							case 3:
								ui = spr_ui_xboxonebuttons;
							break;
							
							//xbox one style 2
							case 4:
								ui = spr_ui_xboxonebuttons_style_2;
							break;
							
							//si no existe
							default:
								ui = spr_ui_xboxbuttons_universal;
							break;
						}
				}
			else
				{
					//switch ps
					switch (global.psui)
						{
							//ps universal
							case 0:
								ui = spr_ui_psbuttons_universal;
							break;
							
							//ps universal style 2
							case 1:
								ui = spr_ui_psbuttons_universal_style_2;
							break;
							
							//ps4
							case 2:
								ui = spr_ui_ps4buttons;
							break;
							
							//ps5
							case 3:
								ui = spr_ui_ps5buttons;
							break;
							
							//si no existe
							default:
								ui = spr_ui_psbuttons_universal;
							break;
						}
				}
		}
	else
		{
			//si se desconecta
			if (global.gicGamepadSupport == "True") && (global.gicGamepadOnly == "True")
				{
					switch (global.gicGamepadType)
						{
							case "Xbox":
								ui = spr_ui_xboxbuttons_universal;
							break;
							
							case "XboxStyle2":
								ui = spr_ui_xboxbuttons_universal_style_2;
							break;
							
							case "Xbox360":
								ui = spr_ui_xboxbuttons;
							break;
							
							case "XboxOne":
								ui = spr_ui_xboxonebuttons;
							break;
							
							case "XboxOneStyle2":
								ui = spr_ui_xboxonebuttons_style_2;
							break;
							
							case "PS":
								ui = spr_ui_psbuttons_universal;
							break;
							
							case "PSStyle2":
								ui = spr_ui_psbuttons_universal_style_2;
							break;
							
							case "PS4":
								ui = spr_ui_ps4buttons;
							break;
							
							case "PS5":
								ui = spr_ui_ps5buttons;
							break;
							
							default:
								ui = spr_missing;
							break;
						}
				}
			else
				{
					ui = spr_ui_buttons;
				}
		}

}