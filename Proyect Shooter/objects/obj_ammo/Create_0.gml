/// @description cambiar imagen segun arma
randomize();

//variables
scr_gunbar()

//imagen
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;
depth = 2;

//imagen
gun = 0;
limit = 3;
iy = limit;
iys = choose(0, 1);
spd = 0.15;

//tamaño del cuadrado, px
ver = 4;

//balas random
rimg = 0;
rtaked = false;
rrandom = irandom_range(0, 7);
r762 = choose(irandom_range(1, 15), irandom_range(3, 17), irandom_range(7, 30));
r9 = choose(irandom_range(1, 15), irandom_range(3, 17), irandom_range(5, 35));
r556 = choose(irandom_range(1, 15), irandom_range(3, 17), irandom_range(4, 35));
r20 = choose(irandom_range(1, 2), irandom_range(1, 4), irandom_range(1, 7));
r12 = choose(irandom_range(1, 6), irandom_range(1, 10), irandom_range(2, 20));
r50ae = choose(irandom_range(1, 2), irandom_range(1, 4), irandom_range(1, 7));
r45acp = choose(irandom_range(4, 10), irandom_range(10, 25), irandom_range(25, 50));
r545 = choose(irandom_range(4, 8), irandom_range(4, 15), irandom_range(15, 30));
r357 = choose(irandom_range(1, 2), irandom_range(1, 4), irandom_range(1, 6));

if !(maxammo >= ammomaxlimit)
	{
		switch global.gun
			{
				//random
				case -1:
					rimg = rrandom;
				break;
		
				//AA-12
				case 0:
					rimg = 4;
				break;
			
				//FN FAL
				case 1:
					rimg = 0;
				break;
			
				//Ithaca 37
				case 2:
					rimg = 3;
				break;
			
				//Micro Uzi
				case 3:
					rimg = 1;
				break;
			
				//Scar L
				case 4:
					rimg = 2;
				break;
			
				//vector
				case 5:
					rimg = 1;
				break;
			
				//as val
				case 6:
					rimg = 1;
				break;
			
				//S12K
				case 7:
					rimg = 4;
				break;
			
				//MP5K
				case 8:
					rimg = 1;
				break;
			
				//M416
				case 9:
					rimg = 2;
				break;
			
				//Desert Eagle
				case 10:
					rimg = 5;
				break;
			
				//THOMPSON
				case 11:
					rimg = 6;
				break;
			
				//AK74U
				case 12:
					rimg = 7;
				break;
			
				//MP40
				case 13:
					rimg = 1;
				break;
				
				//Knife
				case 14:
					rimg = rrandom;
				break;
				
				//Broken Bottle
				case 15:
					rimg = rrandom;
				break;
				
				//Magnum
				case 16:
					rimg = 8;
				break;
				
				//Machete
				case 17:
					rimg = rrandom;
				break;
			
				//AK-47
				case 18:
					rimg = 0;
				break;
			
				//Glock 17
				case 19:
					rimg = 1;
				break;
			
				//M1014
				case 20:
					rimg = 4;
				break;
				
				//Fire Axe
				case 21:
					rimg = rrandom;
				break;
				
				//Lead Pipe
				case 22:
					rimg = rrandom;
				break;
				
				//Cross Wrench
				case 23:
					rimg = rrandom;
				break;
			
				//Sawed Off
				case 24:
					rimg = 3;
				break;
			
				//AEK-971
				case 25:
					rimg = 7;
				break;
			
				//Baseball bat
				case 26:
					rimg = rrandom;
				break;
			
				//Hammer
				case 27:
					rimg = rrandom;
				break;
			
				//Katana
				case 28:
					rimg = rrandom;
				break;
			
				//P250S
				case 29:
					rimg = 1;
				break;
			
				//spas 12
				case 30:
					rimg = 4;
				break;
			
				//AN-94
				case 31:
					rimg = 7;
				break;
			
				//Balistic Shield
				case 32:
					rimg = rrandom;
				break;
			
				//Antiriot Shield
				case 33:
					rimg = rrandom;
				break;
			
				//Electroshock taser
				case 34:
					rimg = rrandom;
				break;
			
				//M1911
				case 35:
					rimg = 6;
				break;
				
				//Sledgehammer
				case 36:
					rimg = rrandom;
				break;
				
				//Drill
				case 37:
					rimg = rrandom;
				break;
				
				//Chainsaw
				case 38:
					rimg = rrandom;
				break;
			
				//MP7-S
				case 39:
					rimg = 1;
				break;
		
				//DP-12
				case 40:
					rimg = 4;
				break;
			}
	}
else
	{
		rimg = rrandom;
	}

image_index = rimg;