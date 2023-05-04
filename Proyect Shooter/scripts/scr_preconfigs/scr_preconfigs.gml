function scr_preconfigs(){
	
	//vars
	scr_datanames();
	
	var precfg_file, cfg_file;
	precfg_file = "preconfigs.gic";
	cfg_file = working_directory + global.config_file;
	
	//switch preconfig
	switch (precfg_slc)
		{
			//default
			case 0:
				pConfig = "default";
			break;
			
			//low
			case 1:
				pConfig = "low";
			break;
			
			//medium
			case 2:
				pConfig = "medium";
			break;
			
			//high
			case 3:
				pConfig = "high";
			break;
			
			//ultra
			case 4:
				pConfig = "ultra";
			break;
			
			//BRUNOO1545
			case 5:
				pConfig = "brunoo1545";
			break;
			
			//deafault
			default:
				pConfig = "default";
			break;
		}

	//load
	ini_open(precfg_file)
	pShowBullet = ini_read_real(pConfig, "pShowBullet", 0)
	pLimitRain = ini_read_real(pConfig, "pLimitRain", 0)
	pShowMagazine = ini_read_real(pConfig, "pShowMagazine", 0)
	pShowGunpowder = ini_read_real(pConfig, "pShowGunpowder", 0)
	pPauseNoise = ini_read_real(pConfig, "pPauseNoise", 0)
	pGeneralShadows = ini_read_real(pConfig, "pGeneralShadows", 0)
	pDetailDelete = ini_read_real(pConfig, "pDetailDelete", 0)
	ini_close();
	
	//write
	ini_open(cfg_file)
	ini_write_real(__config_section, dn_showbullet, pShowBullet)
	ini_write_real(__config_section, dn_limitrain, pLimitRain)
	ini_write_real(__config_section, dn_showmagazine, pShowMagazine)
	ini_write_real(__config_section, dn_showgunpowder, pShowGunpowder)
	ini_write_real(__config_section, dn_pausenoise, pPauseNoise)
	ini_write_real(__config_section, dn_generalshadows, pGeneralShadows)
	ini_write_real(__config_section, dn_detaildelete, pDetailDelete)
	ini_close();
	
	//refresh
	global.showbullet = pShowBullet;
	global.limitrain = pLimitRain;
	global.showmagazine = pShowMagazine;
	global.showgunpowder = pShowGunpowder;
	global.pause_noise = pPauseNoise;
	global.general_shadows = pGeneralShadows;
	global.detail_delete = pDetailDelete;

}