function scr_drop_gun(){
	
	if !(global.gun == -1)
		{
			var dropped_gun = "";

			switch (global.gun)
				{
					//AA-12
					case 0:
						dropped_gun = obj_aa12;
					break;
			
					//FN-FAL
					case 1:
						dropped_gun = obj_fnfal;
					break;
			
					//ITHACA 37
					case 2:
						dropped_gun = obj_i37;
					break;
			
					//MICRO-UZI
					case 3:
						dropped_gun = obj_mu;
					break;
			
					//SCAR-L
					case 4:
						dropped_gun = obj_scarl;
					break;
			
					//VECTOR
					case 5:
						dropped_gun = obj_vector;
					break;
			
					//AS VAL
					case 6:
						dropped_gun = obj_asval;
					break;
			
					//S12K
					case 7:
						dropped_gun = obj_s12k;
					break;
			
					//MP5K
					case 8:
						dropped_gun = obj_mp5k;
					break;
			
					//M416
					case 9:
						dropped_gun = obj_m416;
					break;
			
					//DESERT EAGLE
					case 10:
						dropped_gun = obj_de;
					break;
			
					//THOMPSON
					case 11:
						dropped_gun = obj_thompson;
					break;
			
					//AK74U
					case 12:
						dropped_gun = obj_ak74u;
					break;
			
					//MP40
					case 13:
						dropped_gun = obj_mp40;
					break;
			
					//Knife
					case 14:
						dropped_gun = obj_knife;
					break;
			
					//Broken Bottle
					case 15:
						dropped_gun = obj_broken_bottle;
					break;
			
					//Magnum
					case 16:
						dropped_gun = obj_magnum;
					break;
			
					//Machete
					case 17:
						dropped_gun = obj_machete;
					break;
			
					//AK-47
					case 18:
						dropped_gun = obj_ak47;
					break;
			
					//GLOCK 17
					case 19:
						dropped_gun = obj_glock17;
					break;
			
					//M1014
					case 20:
						dropped_gun = obj_m1014;
					break;
			
					//Fire Axe
					case 21:
						dropped_gun = obj_fire_axe;
					break;
			
					//Lead Pipe
					case 22:
						dropped_gun = obj_lead_pipe;
					break;
			
					//Cross Wrench
					case 23:
						dropped_gun = obj_cross_wrench;
					break;
			
					//Sawed Off
					case 24:
						dropped_gun = obj_sawed_off;
					break;
					
					//AEK-971
					case 25:
						dropped_gun = obj_aek971;
					break;
					
					//Baseball Bat
					case 26:
						dropped_gun = obj_baseball_bat;
					break;
					
					//Hammer
					case 27:
						dropped_gun = obj_hammer;
					break;
					
					//Katana
					case 28:
						dropped_gun = obj_katana;
					break;
					
					//P250S
					case 29:
						dropped_gun = obj_p250s;
					break;
					
					//spas 12
					case 30:
						dropped_gun = obj_spas12;
					break;
					
					//AN-94
					case 31:
						dropped_gun = obj_an94;
					break;
					
					//Balistic Shield
					case 32:
						dropped_gun = obj_balistic_shield;
					break;
					
					//Anti-Riot Shield
					case 33:
						dropped_gun = obj_antiriot_shield;
					break;
					
					//Taser
					case 34:
						dropped_gun = obj_taser;
					break;
					
					//M1911
					case 35:
						dropped_gun = obj_m1911;
					break;
					
					//Sledgehammer
					case 36:
						dropped_gun = obj_sledgehammer;
					break;
					
					//Drill
					case 37:
						dropped_gun = obj_drill;
					break;
					
					//Chainsaw
					case 38:
						dropped_gun = obj_chainsaw;
					break;
					
					//MP7-S
					case 39:
						dropped_gun = obj_mp7s;
					break;
					
					//DP-12
					case 40:
						dropped_gun = obj_dp12;
					break;
				}

				//accion segun arma
				obj_player.throwguns = true;
				instance_create_depth(x, y, -y, dropped_gun);
				global.gun = -1;
				global.guntaked = false;
				obj_player.cd = false;
				obj_player.is_hand_gun = false;
				
				//stats
				global.gun_dropped += 1;
				scr_save_us();
			}

}