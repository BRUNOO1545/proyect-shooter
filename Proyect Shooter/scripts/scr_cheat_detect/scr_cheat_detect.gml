function scr_cheat_detect(){

	//var
	var file = global.root + "ic.dat";
	
	//music
	if (global.music > 1) or (global.music < 0)
		{
			ini_open(file)
			ini_write_real("ic", "ic", 1)
			ini_close();
		}
	
	//sfx
	if (global.sfx > 1) or (global.sfx < 0)
		{
			ini_open(file)
			ini_write_real("ic", "ic", 1)
			ini_close();
		}
	
	//gamamepad deadzone
	if (global.deadzone > 0.7) or (global.deadzone < 0.1)
		{
			ini_open(file)
			ini_write_real("ic", "ic", 1)
			ini_close();
		}
	
	//gamepad sens
	if (global.gamepad_sens > 6) or (global.gamepad_sens < 1)
		{
			ini_open(file)
			ini_write_real("ic", "ic", 1)
			ini_close();
		}
	
	//pause noise
	if (global.pause_noise > 3) or (global.pause_noise < 0)
		{
			ini_open(file)
			ini_write_real("ic", "ic", 1)
			ini_close();
		}

}