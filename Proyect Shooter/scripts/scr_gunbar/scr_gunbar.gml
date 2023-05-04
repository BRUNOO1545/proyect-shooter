function scr_gunbar(){

	switch (global.gun)
		{
			case -1:
				gii = 0;
				bulletgii = 0;
				calname = "";
				name = string(global.last_gun_used_name);
				bullet = 0;
				maxammo = 0;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "";
			break;
			
			case 0:
				gii = 0;
				bulletgii = 0;
				calname = global.txt23 + " " + string(global.txt162);
				name = string(global.gun0);
				bullet = global.aa12bullets;
				maxammo = global.cal12bulletsmax;
				ammolimit = 20;
				ammomaxlimit = 200;
				reloadtimermax = 50;
				guntipe = "shotgun";
			break;
			
			case 1:
				gii = 1;
				bulletgii = 3;
				calname = string(global.txt165) + string(global.txt127);
				name = string(global.gun1);
				bullet = global.fnfalbullets;
				maxammo = global.cal762bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 50;
				guntipe = "assault_rifle";
			break;
			
			case 2:
				gii = 2;
				bulletgii = 1;
				calname = global.txt23 + " " + string(global.txt163);
				name = string(global.gun2);
				bullet = global.i37bullets;
				maxammo = global.cal20bulletsmax;
				ammolimit = 3;
				ammomaxlimit = 30;
				reloadtimermax = 50;
				guntipe = "shotgun";
			break;
			
			case 3:
				gii = 3;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun3);
				bullet = global.mubullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 50;
				guntipe = "subfusil";
			break;
			
			case 4:
				gii = 4;
				bulletgii = 4;
				calname = string(global.txt165) + string(global.txt127);
				name = string(global.gun4);
				bullet = global.scarlbullets;
				maxammo = global.cal556bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 50;
				guntipe = "assault_rifle";
			break;
			
			case 5:
				gii = 5;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun5);
				bullet = global.vectorbullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 35;
				ammomaxlimit = 350;
				reloadtimermax = 50;
				guntipe = "subfusil";
			break;
			
			case 6:
				gii = 6;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun6);
				bullet = global.asvalbullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 35;
				ammomaxlimit = 350;
				reloadtimermax = 50;
				guntipe = "subfusil";
			break;
			
			case 7:
				gii = 7;
				bulletgii = 0;
				calname = global.txt23 + " " + string(global.txt162);
				name = string(global.gun7);
				bullet = global.s12kbullets;
				maxammo = global.cal12bulletsmax;
				ammolimit = 9;
				ammomaxlimit = 90;
				reloadtimermax = 70;
				guntipe = "shotgun";
			break;
			
			case 8:
				gii = 8;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun8);
				bullet = global.mp5kbullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 50;
				guntipe = "subfusil";
			break;
			
			case 9:
				gii = 9;
				bulletgii = 4;
				calname = string(global.txt164) + string(global.txt127);
				name = string(global.gun9);
				bullet = global.m416bullets;
				maxammo = global.cal556bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 50;
				guntipe = "assault_rifle";
			break;
			
			case 10:
				gii = 10;
				bulletgii = 5;
				calname = string(global.txt166);
				name = string(global.gun10);
				bullet = global.debullets;
				maxammo = global.cal50aebulletsmax;
				ammolimit = 7;
				ammomaxlimit = 70;
				reloadtimermax = 40;
				guntipe = "hand_gun";
			break;
			
			case 11:
				gii = 11;
				bulletgii = 6;
				calname = string(global.txt167);
				name = string(global.gun11);
				bullet = global.thompsonbullets;
				maxammo = global.cal45acpbulletsmax;
				ammolimit = 50;
				ammomaxlimit = 500;
				reloadtimermax = 50;
				guntipe = "subfusil";
			break;
			
			case 12:
				gii = 12;
				bulletgii = 7;
				calname = string(global.txt168) + string(global.txt127);
				name = string(global.gun12);
				bullet = global.ak74ubullets;
				maxammo = global.cal545bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 35;
				guntipe = "subfusil";
			break;
			
			case 13:
				gii = 13;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun13);
				bullet = global.mp40bullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 45;
				guntipe = "subfusil";
			break;
			
			case 14:
				gii = 14;
				bulletgii = 8;
				calname = "";
				name = string(global.gun14);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 15:
				gii = 15;
				bulletgii = 8;
				calname = "";
				name = string(global.gun15);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 16:
				gii = 16;
				bulletgii = 9;
				calname = string(global.txt169);
				name = string(global.gun16);
				bullet = global.magnumbullets;
				maxammo = global.cal357bulletsmax;
				ammolimit = 6;
				ammomaxlimit = 60;
				reloadtimermax = 60;
				guntipe = "hand_gun";
			break;
			
			case 17:
				gii = 17;
				bulletgii = 8;
				calname = "";
				name = string(global.gun17);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 18:
				gii = 18;
				bulletgii = 3;
				calname = string(global.txt165) + string(global.txt127);
				name = string(global.gun18);
				bullet = global.ak47bullets;
				maxammo = global.cal762bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 40;
				guntipe = "assault_rifle";
			break;
			
			case 19:
				gii = 19;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun19);
				bullet = global.glock17bullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 17;
				ammomaxlimit = 170;
				reloadtimermax = 40;
				guntipe = "hand_gun";
			break;
			
			case 20:
				gii = 20;
				bulletgii = 0;
				calname = global.txt23 + " " + string(global.txt162);
				name = string(global.gun20);
				bullet = global.m1014bullets;
				maxammo = global.cal12bulletsmax;
				ammolimit = 6;
				ammomaxlimit = 60;
				reloadtimermax = 80;
				guntipe = "shotgun";
			break;
			
			case 21:
				gii = 21;
				bulletgii = 8;
				calname = "";
				name = string(global.gun21);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 22:
				gii = 22;
				bulletgii = 8;
				calname = "";
				name = string(global.gun22);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 23:
				gii = 23;
				bulletgii = 8;
				calname = "";
				name = string(global.gun23);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 24:
				gii = 24;
				bulletgii = 1;
				calname = global.txt23 + " " + string(global.txt163);
				name = string(global.gun24);
				bullet = global.sawedoffbullets;
				maxammo = global.cal20bulletsmax;
				ammolimit = 2;
				ammomaxlimit = 20;
				reloadtimermax = 50;
				guntipe = "shotgun";
			break;
			
			case 25:
				gii = 25;
				bulletgii = 7;
				calname = string(global.txt168) + string(global.txt127);
				name = string(global.gun25);
				bullet = global.aek971bullets;
				maxammo = global.cal545bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 45;
				guntipe = "assault_rifle";
			break;
			
			case 26:
				gii = 26;
				bulletgii = 8;
				calname = "";
				name = string(global.gun26);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 27:
				gii = 27;
				bulletgii = 8;
				calname = "";
				name = string(global.gun27);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 28:
				gii = 28;
				bulletgii = 8;
				calname = "";
				name = string(global.gun28);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 29:
				gii = 29;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun29);
				bullet = global.p250sbullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 9;
				ammomaxlimit = 90;
				reloadtimermax = 40;
				guntipe = "hand_gun";
			break;
			
			case 30:
				gii = 30;
				bulletgii = 0;
				calname = global.txt23 + " " + string(global.txt162);
				name = string(global.gun30);
				bullet = global.spas12bullets;
				maxammo = global.cal12bulletsmax;
				ammolimit = 8;
				ammomaxlimit = 80;
				reloadtimermax = 60;
				guntipe = "shotgun";
			break;
			
			case 31:
				gii = 31;
				bulletgii = 7;
				calname = string(global.txt168) + string(global.txt127);
				name = string(global.gun31);
				bullet = global.an94bullets;
				maxammo = global.cal545bulletsmax;
				ammolimit = 30;
				ammomaxlimit = 300;
				reloadtimermax = 45;
				guntipe = "assault_rifle";
			break;
			
			case 32:
				gii = 32;
				bulletgii = 8;
				calname = "";
				name = string(global.gun32);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "special_hand_gun";
			break;
			
			case 33:
				gii = 33;
				bulletgii = 8;
				calname = "";
				name = string(global.gun33);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "special_hand_gun";
			break;
			
			case 34:
				gii = 34;
				bulletgii = 8;
				calname = "";
				name = string(global.gun34);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "special_hand_gun";
			break;
			
			case 35:
				gii = 35;
				bulletgii = 6;
				calname = string(global.txt167);
				name = string(global.gun35);
				bullet = global.m1911bullets;
				maxammo = global.cal45acpbulletsmax;
				ammolimit = 7;
				ammomaxlimit = 70;
				reloadtimermax = 40;
				guntipe = "hand_gun";
			break;
			
			case 36:
				gii = 36;
				bulletgii = 8;
				calname = "";
				name = string(global.gun36);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "knife";
			break;
			
			case 37:
				gii = 37;
				bulletgii = 8;
				calname = "";
				name = string(global.gun37);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "special_hand_gun";
			break;
			
			case 38:
				gii = 38;
				bulletgii = 8;
				calname = "";
				name = string(global.gun38);
				bullet = global.knifepunch;
				maxammo = 1;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "special_hand_gun";
			break;
			
			case 39:
				gii = 39;
				bulletgii = 2;
				calname = string(global.txt161) + string(global.txt127);
				name = string(global.gun39);
				bullet = global.mp7sbullets;
				maxammo = global.cal9bulletsmax;
				ammolimit = 20;
				ammomaxlimit = 200;
				reloadtimermax = 45;
				guntipe = "subfusil";
			break;
			
			case 40:
				gii = 40;
				bulletgii = 0;
				calname = global.txt23 + " " + string(global.txt162);
				name = string(global.gun40);
				bullet = global.dp12bullets;
				maxammo = global.cal12bulletsmax;
				ammolimit = 16;
				ammomaxlimit = 160;
				reloadtimermax = 70;
				guntipe = "shotgun";
			break;
			
			default:
				gii = 0;
				bulletgii = 8;
				calname = "UNKNOWN";
				name = "UNKNOWN GUN";
				bullet = 0;
				maxammo = 0;
				ammolimit = 0;
				ammomaxlimit = 0;
				reloadtimermax = 0;
				guntipe = "UNKNOWN";
			break;
		}

}