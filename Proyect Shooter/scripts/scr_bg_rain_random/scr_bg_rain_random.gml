function scr_bg_rain_random(){

	//restart bg data
	randomize();
	
	global.RainRandomValue = irandom_range(global.gicMenuBgRandomRangeMin, global.gicMenuBgRandomRangeMax);
	global.RainRandomValueLimit = irandom_range(global.gicMenuBgRandomRangeLimitMin, global.gicMenuBgRandomRangeLimitMax);

}