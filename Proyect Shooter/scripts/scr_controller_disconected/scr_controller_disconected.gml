function scr_controller_disconected(){
	
	var ctl = global.controller;
	
	if (global.gicGamepadOnly == "True") && (ctl == -1)
		{
			gp_disconected = true;
		}
	else
		{
			gp_disconected = false;
		}

}