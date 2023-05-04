function scr_random_tip(){
	
	//random tip
	randomize();
	var tip_number, tip_string;
	
	if (global.tip_max > 0)
		{
			tip_number = irandom_range(0, global.tip_max);
			tip_string = variable_global_get("tip" + string(tip_number));
		}
	else
		{
			tip_number = 0;
			tip_string = variable_global_get("tip" + string(tip_number));
		}
	
	if variable_global_exists("tip" + string(tip_number))
		{
			tip = tip_string;
		}
	else
		{
			tip = string(global.txt153) + " (" + string(tip_number) + ") " + string(global.txt154);
		}

}