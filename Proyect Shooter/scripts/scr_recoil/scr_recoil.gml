function scr_recoil(){
	
	switch bullet_type
		{
			case "bt_cal12":
				dispersion = 6;
				blspd = 75;
			break;
			
			case "bt_cal762":
				dispersion = 4;
				blspd = 70;
			break;
			
			case "bt_cal20":
				dispersion = 8;
				blspd = 70;
			break;
			
			case "bt_cal556":
				dispersion = 3;
				blspd = 60;
			break;
			
			case "bt_cal9":
				dispersion = 2;
				blspd = 75;
			break;
			
			case "bt_cal50ae":
				dispersion = 5;
				blspd = 80;
			break;
			
			case "bt_cal45acp":
				dispersion = 3;
				blspd = 70;
			break;
			
			case "bt_cal545":
				dispersion = 4;
				blspd = 76;
			break;
			
			case "bt_cal357":
				dispersion = 5;
				blspd = 80;
			break;
			
			default:
				dispersion = 1;
				blspd = 60;
			break;
		}

}