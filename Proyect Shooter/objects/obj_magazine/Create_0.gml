/// @description cambiar imagen segun arma
randomize();
image_speed = 0;
image_xscale = 0.15;
image_yscale = 0.15;
speed = random_range(3, 6);
depth = 3;
direction = obj_player.image_angle - 90;


//balas random
rimg = 0;

if (global.gun > -1)
	{
		rimg = global.gun;
	}
else
	{
		rimg = 2;
	}

/*
switch global.gun
	{
		//random
		case -1:
			rimg = 2;
		break;
		
		//AA-12
		case 0:
			rimg = 0;
		break;
		
		//FN FAL
		case 1:
			rimg = 1;
		break;
		
		//Ithaca 37
		case 2:
			rimg = 2;
		break;
		
		//Micro Uzi
		case 3:
			rimg = 3;
		break;
		
		//Scar L
		case 4:
			rimg = 4;
		break;
		
		//vector
		case 5:
			rimg = 5;
		break;
		
		//as val
		case 6:
			rimg = 6;
		break;
		
		//S12K
		case 7:
			rimg = 7;
		break;
		
		//MP5K
		case 8:
			rimg = 8;
		break;
		
		//M416
		case 9:
			rimg = 9;
		break;
		
		//DESERT EAGLE
		case 10:
			rimg = 10;
		break;
		
		//THOMPSON
		case 11:
			rimg = 11;
		break;
		
		//AK74U
		case 12:
			rimg = 12;
		break;
		
		//MP40
		case 13:
			rimg = 13;
		break;
		
		//Knife
		case 14:
			rimg = 14;
		break;
		
		//Broken Bottle
		case 15:
			rimg = 15;
		break;
		
		//Magnum
		case 16:
			rimg = 16;
		break;
	}*/

image_index = rimg;
image_angle = irandom_range(0, 360);

//auto delete
switch global.detail_delete
	{
		//desactivado
		case 0:
			dtimer = 0;
		break;
		
		//2s
		case 1:
			dtimer = 120;
		break;
		
		//5s
		case 2:
			dtimer = 300;
		break;
		
		//10s
		case 3:
			dtimer = 600;
		break;
	}