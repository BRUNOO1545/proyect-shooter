function scr_enemy_drop_gun(){

	switch (drop_gun)
		{
			//AA-12
			case 0:
				gun = obj_aa12;
			break;
			
			//FN-FAL
			case 1:
				gun = obj_fnfal;
			break;
			
			//ITHACA 37
			case 2:
				gun = obj_i37;
			break;
			
			//MICRO-UZI
			case 3:
				gun = obj_mu;
			break;
			
			//SCAR-L
			case 4:
				gun = obj_scarl;
			break;
			
			//VECTOR
			case 5:
				gun = obj_vector;
			break;
			
			//AS VAL
			case 6:
				gun = obj_asval;
			break;
			
			//S12K
			case 7:
				gun = obj_s12k;
			break;
			
			//MP5K
			case 8:
				gun = obj_mp5k;
			break;
			
			//M416
			case 9:
				gun = obj_m416;
			break;
			
			//DESERT EAGLE
			case 10:
				gun = obj_de;
			break;
			
			//THOMPSON
			case 11:
				gun = obj_thompson;
			break;
			
			//AK74U
			case 12:
				gun = obj_ak74u;
			break;
			
			//MP40
			case 13:
				gun = obj_mp40;
			break;
			
			//Knife
			case 14:
				gun = obj_knife;
			break;
			
			//Broke bottle
			case 15:
				gun = obj_broken_bottle;
			break;
			
			//Magnum
			case 16:
				gun = obj_magnum;
			break;
			
			//Machete
			case 17:
				gun = obj_machete;
			break;
			
			//AK-47
			case 18:
				gun = obj_ak47;
			break;
			
			//GLOCK 17
			case 19:
				gun = obj_glock17;
			break;
			
			//M1014
			case 20:
				gun = obj_m1014;
			break;
			
			//Fire Axe
			case 21:
				gun = obj_fire_axe;
			break;
			
			//Lead Pipe
			case 22:
				gun = obj_lead_pipe;
			break;
			
			//Cross Wrench
			case 23:
				gun = obj_cross_wrench;
			break;
			
			//Sawed Off
			case 24:
				gun = obj_sawed_off;
			break;
			
			//AEK-971
			case 25:
				gun = obj_aek971;
			break;
			
			//Baseball Bat
			case 26:
				gun = obj_baseball_bat;
			break;
			
			//Hammer
			case 27:
				gun = obj_hammer;
			break;
			
			//Katana
			case 28:
				gun = obj_katana;
			break;
			
			//P250s
			case 29:
				gun = obj_p250s;
			break;
			
			//Spas 12
			case 30:
				gun = obj_spas12;
			break;
			
			//AN-94
			case 31:
				gun = obj_an94;
			break;
			
			//Ballistic Shield
			case 32:
				gun = obj_balistic_shield;
			break;
			
			//Anti-Riot Shield
			case 33:
				gun = obj_antiriot_shield;
			break;
			
			//Taser
			case 34:
				gun = obj_taser;
			break;
			
			//M1911
			case 35:
				gun = obj_m1911;
			break;
			
			//Sledgehammer
			case 36:
				gun = obj_sledgehammer;
			break;
			
			//Drill
			case 37:
				gun = obj_drill;
			break;
			
			//Chainsaw
			case 38:
				gun = obj_chainsaw;
			break;
			
			default:
				gun = obj_ammo;
			break;
		}
	
	//crear
	instance_create_depth(x, y, -y, gun);

}