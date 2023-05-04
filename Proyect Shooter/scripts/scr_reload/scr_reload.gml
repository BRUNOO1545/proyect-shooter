function scr_reload(){

	//script de datos
	scr_gunbar()

	//switch de armas
	switch (global.gun)
		{
			//AA-12
			case 0:
				global.cal12bulletsmax += global.aa12bullets;
				global.aa12bullets = min(ammolimit, global.cal12bulletsmax);
				global.cal12bulletsmax -= global.aa12bullets;
				
				obj_player.reload = false;
			break;
			
			//FN-FAL
			case 1:
				global.cal762bulletsmax += global.fnfalbullets;
				global.fnfalbullets = min(ammolimit, global.cal762bulletsmax);
				global.cal762bulletsmax -= global.fnfalbullets;
				
				obj_player.reload = false;
			break;
			
			//ITHACA 37
			case 2:
				global.cal20bulletsmax += global.i37bullets;
				global.i37bullets = min(ammolimit, global.cal20bulletsmax);
				global.cal20bulletsmax -= global.i37bullets;
				
				obj_player.reload = false;
			break;
			
			//MICRO-UZI
			case 3:
				global.cal9bulletsmax += global.mubullets;
				global.mubullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.mubullets;
				
				obj_player.reload = false;
			break;
			
			//SCAR-L
			case 4:
				global.cal556bulletsmax += global.scarlbullets;
				global.scarlbullets = min(ammolimit, global.cal556bulletsmax);
				global.cal556bulletsmax -= global.scarlbullets;
				
				obj_player.reload = false;
			break;
			
			//VECTOR
			case 5:
				global.cal9bulletsmax += global.vectorbullets;
				global.vectorbullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.vectorbullets;
				
				obj_player.reload = false;
			break;
			
			//AS-VAL
			case 6:
				global.cal9bulletsmax += global.asvalbullets;
				global.asvalbullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.asvalbullets;
				
				obj_player.reload = false;
			break;
			
			//S12K
			case 7:
				global.cal12bulletsmax += global.s12kbullets;
				global.s12kbullets = min(ammolimit, global.cal12bulletsmax);
				global.cal12bulletsmax -= global.s12kbullets;
				
				obj_player.reload = false;
			break;
			
			//MP5K
			case 8:
				global.cal9bulletsmax += global.mp5kbullets;
				global.mp5kbullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.mp5kbullets;
				
				obj_player.reload = false;
			break;
			
			//M416
			case 9:
				global.cal556bulletsmax += global.m416bullets;
				global.m416bullets = min(ammolimit, global.cal556bulletsmax);
				global.cal556bulletsmax -= global.m416bullets;
				
				obj_player.reload = false;
			break;
			
			//DESERT EAGLE
			case 10:
				global.cal50aebulletsmax += global.debullets;
				global.debullets = min(ammolimit, global.cal50aebulletsmax);
				global.cal50aebulletsmax -= global.debullets;
				
				obj_player.reload = false;
			break;
			
			//THOMPSON
			case 11:
				global.cal45acpbulletsmax += global.thompsonbullets;
				global.thompsonbullets = min(ammolimit, global.cal45acpbulletsmax);
				global.cal45acpbulletsmax -= global.thompsonbullets;
				
				obj_player.reload = false;
			break;
			
			//AK74U
			case 12:
				global.cal545bulletsmax += global.ak74ubullets;
				global.ak74ubullets = min(ammolimit, global.cal545bulletsmax);
				global.cal545bulletsmax -= global.ak74ubullets;
				
				obj_player.reload = false;
			break;
			
			//MP40
			case 13:
				global.cal9bulletsmax += global.mp40bullets;
				global.mp40bullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.mp40bullets;
				
				obj_player.reload = false;
			break;
			
			//Knife
			case 14:
			break;
			
			//Broken Bottle
			case 15:
			break;
			
			//Magnum
			case 16:
				global.cal357bulletsmax += global.magnumbullets;
				global.magnumbullets = min(ammolimit, global.cal357bulletsmax);
				global.cal357bulletsmax -= global.magnumbullets;
				
				obj_player.reload = false;
			break;
			
			//Machete
			case 17:
			break;
			
			//AK-47
			case 18:
				global.cal762bulletsmax += global.ak47bullets;
				global.ak47bullets = min(ammolimit, global.cal762bulletsmax);
				global.cal762bulletsmax -= global.ak47bullets;
				
				obj_player.reload = false;
			break;
			
			//GLOCK 17
			case 19:
				global.cal9bulletsmax += global.glock17bullets;
				global.glock17bullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.glock17bullets;
				
				obj_player.reload = false;
			break;
			
			//M1014
			case 20:
				global.cal12bulletsmax += global.m1014bullets;
				global.m1014bullets = min(ammolimit, global.cal12bulletsmax);
				global.cal12bulletsmax -= global.m1014bullets;
				
				obj_player.reload = false;
			break;
			
			//Fire Axe
			case 21:
			break;
			
			//Lead Pipe
			case 22:
			break;
			
			//Cross Wrench
			case 23:
			break;
			
			//Sawed Off
			case 24:
				global.cal20bulletsmax += global.sawedoffbullets;
				global.sawedoffbullets = min(ammolimit, global.cal20bulletsmax);
				global.cal20bulletsmax -= global.sawedoffbullets;
				
				obj_player.reload = false;
			break;
			
			//AEK-971
			case 25:
				global.cal545bulletsmax += global.aek971bullets;
				global.aek971bullets = min(ammolimit, global.cal545bulletsmax);
				global.cal545bulletsmax -= global.aek971bullets;
				
				obj_player.reload = false;
			break;
			
			//Baseball Bat
			case 26:
			break;
			
			//Hammer
			case 27:
			break;
			
			//Katana
			case 28:
			break;
			
			//P250S
			case 29:
				global.cal9bulletsmax += global.p250sbullets;
				global.p250sbullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.p250sbullets;
				
				obj_player.reload = false;
			break;
			
			//Spas 12
			case 30:
				global.cal12bulletsmax += global.spas12bullets;
				global.spas12bullets = min(ammolimit, global.cal12bulletsmax);
				global.cal12bulletsmax -= global.spas12bullets;
				
				obj_player.reload = false;
			break;
			
			//AN-94
			case 31:
				global.cal545bulletsmax += global.an94bullets;
				global.an94bullets = min(ammolimit, global.cal545bulletsmax);
				global.cal545bulletsmax -= global.an94bullets;
				
				obj_player.reload = false;
			break;
			
			//Balistic Shield
			case 32:
			break;
			
			//Anti-Riot Shield
			case 33:
			break;
			
			//Taser
			case 34:
			break;
			
			//M1911
			case 35:
				global.cal45acpbulletsmax += global.m1911bullets;
				global.m1911bullets = min(ammolimit, global.cal45acpbulletsmax);
				global.cal45acpbulletsmax -= global.m1911bullets;
				
				obj_player.reload = false;
			break;
			
			//Sledgehammer
			case 36:
			break;
			
			//Drill
			case 37:
			break;
			
			//Chainsaw
			case 38:
			break;
			
			//MP7-S
			case 39:
				global.cal9bulletsmax += global.mp7sbullets;
				global.mp7sbullets = min(ammolimit, global.cal9bulletsmax);
				global.cal9bulletsmax -= global.mp7sbullets;
				
				obj_player.reload = false;
			break;
			
			//DP-12
			case 40:
				global.cal12bulletsmax += global.dp12bullets;
				global.dp12bullets = min(ammolimit, global.cal12bulletsmax);
				global.cal12bulletsmax -= global.dp12bullets;
				
				obj_player.reload = false;
			break;
		}

}