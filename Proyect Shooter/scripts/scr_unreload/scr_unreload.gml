function scr_unreload(){

	//script de datos
	scr_gunbar()

	//switch de armas
	switch (global.gun)
		{
			//AA-12
			case 0:
				global.cal12bulletsmax += global.aa12bullets;
				global.aa12bullets = 0;
			break;
			
			//FN-FAL
			case 1:
				global.cal762bulletsmax += global.fnfalbullets;
				global.fnfalbullets = 0;
			break;
			
			//ITHACA 37
			case 2:
				global.cal20bulletsmax += global.i37bullets;
				global.i37bullets = 0;
			break;
			
			//MICRO-UZI
			case 3:
				global.cal9bulletsmax += global.mubullets;
				global.mubullets = 0;
			break;
			
			//SCAR-L
			case 4:
				global.cal556bulletsmax += global.scarlbullets;
				global.scarlbullets = 0;
			break;
			
			//VECTOR
			case 5:
				global.cal9bulletsmax += global.vectorbullets;
				global.vectorbullets = 0;
			break;
			
			//AS-VAL
			case 6:
				global.cal9bulletsmax += global.asvalbullets;
				global.asvalbullets = 0;
			break;
			
			//S12K
			case 7:
				global.cal12bulletsmax += global.s12kbullets;
				global.s12kbullets = 0;
			break;
			
			//MP5K
			case 8:
				global.cal9bulletsmax += global.mp5kbullets;
				global.mp5kbullets = 0;
			break;
			
			//M416
			case 9:
				global.cal556bulletsmax += global.m416bullets;
				global.m416bullets = 0;
			break;
			
			//DESERT EAGLE
			case 10:
				global.cal50aebulletsmax += global.debullets;
				global.debullets = 0;
			break;
			
			//THOMPSON
			case 11:
				global.cal45acpbulletsmax += global.thompsonbullets;
				global.thompsonbullets = 0;
			break;
			
			//AK74U
			case 12:
				global.cal545bulletsmax += global.ak74ubullets;
				global.ak74ubullets = 0;
			break;
			
			//MP40
			case 13:
				global.cal9bulletsmax += global.mp40bullets;
				global.mp40bullets = 0;
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
				global.magnumbullets = 0;
			break;
			
			//Machete
			case 17:
			break;
			
			//AK-47
			case 18:
				global.cal762bulletsmax += global.ak47bullets;
				global.ak47bullets = 0;
			break;
			
			//GLOCK 17
			case 19:
				global.cal9bulletsmax += global.glock17bullets;
				global.glock17bullets = 0;
			break;
			
			//M1014
			case 20:
				global.cal12bulletsmax += global.m1014bullets;
				global.m1014bullets = 0;
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
				global.sawedoffbullets = 0;
			break;
			
			//AEK-971
			case 25:
				global.cal545bulletsmax += global.aek971bullets;
				global.aek971bullets = 0;
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
				global.p250sbullets = 0;
			break;
			
			//spas 12
			case 30:
				global.cal12bulletsmax += global.spas12bullets;
				global.spas12bullets = 0;
			break;
			
			//AN-94
			case 31:
				global.cal545bulletsmax += global.an94bullets;
				global.an94bullets = 0;
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
				global.m1911bullets = 0;
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
				global.mp7sbullets = 0;
			break;
			
			//DP-12
			case 40:
				global.cal12bulletsmax += global.dp12bullets;
				global.dp12bullets = 0;
			break;
		}

}