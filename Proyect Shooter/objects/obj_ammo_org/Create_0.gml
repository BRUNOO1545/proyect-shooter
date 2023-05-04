/// @description cambiar imagen segun arma
randomize();

//imagen
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;

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
rrandom = irandom_range(0, 5);
r762 = irandom_range(7, 30);
r9 = irandom_range(3, 35);
r556 = irandom_range(4, 35);
r20 = irandom_range(1, 7);
r12 = irandom_range(2, 20);
r50ae = irandom_range(1, 7);

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
	}

image_index = rimg;