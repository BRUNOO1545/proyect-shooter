function scr_take_gun(){

	//radio de colision
	var rad = 6;

	//si existe jugador
	if instance_exists(obj_player)
		{
			//AA-12
			if collision_circle(x, y, rad, obj_aa12, false, false)
				{
					global.gun = 0;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//FN-FAL
			if collision_circle(x, y, rad, obj_fnfal, false, false)
				{
					global.gun = 1;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//ITHACA 37
			if collision_circle(x, y, rad, obj_i37, false, false)
				{
					global.gun = 2;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//MICRO-UZI
			if collision_circle(x, y, rad, obj_mu, false, false)
				{
					global.gun = 3;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//SCAR-L
			if collision_circle(x, y, rad, obj_scarl, false, false)
				{
					global.gun = 4;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//VECTOR
			if collision_circle(x, y, rad, obj_vector, false, false)
				{
					global.gun = 5;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//AS-VAL
			if collision_circle(x, y, rad, obj_asval, false, false)
				{
					global.gun = 6;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//S12K
			if collision_circle(x, y, rad, obj_s12k, false, false)
				{
					global.gun = 7;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//MP5K
			if collision_circle(x, y, rad, obj_mp5k, false, false)
				{
					global.gun = 8;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//M416
			if collision_circle(x, y, rad, obj_m416, false, false)
				{
					global.gun = 9;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//DESERT EAGLE
			if collision_circle(x, y, rad, obj_de, false, false)
				{
					global.gun = 10;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//THOMPSON
			if collision_circle(x, y, rad, obj_thompson, false, false)
				{
					global.gun = 11;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//Ak74U
			if collision_circle(x, y, rad, obj_ak74u, false, false)
				{
					global.gun = 12;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//MP40
			if collision_circle(x, y, rad, obj_mp40, false, false)
				{
					global.gun = 13;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//Knife
			if collision_circle(x, y, rad, obj_knife, false, false)
				{
					global.gun = 14;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//Broken Bottle
			if collision_circle(x, y, rad, obj_broken_bottle, false, false)
				{
					global.gun = 15;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//Magnum
			if collision_circle(x, y, rad, obj_magnum, false, false)
				{
					global.gun = 16;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}

			//Machete
			if collision_circle(x, y, rad, obj_machete, false, false)
				{
					global.gun = 17;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//AK-47
			if collision_circle(x, y, rad, obj_ak47, false, false)
				{
					global.gun = 18;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//GLOCK 17
			if collision_circle(x, y, rad, obj_glock17, false, false)
				{
					global.gun = 19;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//M1014
			if collision_circle(x, y, rad, obj_m1014, false, false)
				{
					global.gun = 20;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//Fire Axe
			if collision_circle(x, y, rad, obj_fire_axe, false, false)
				{
					global.gun = 21;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//Lead Pipe
			if collision_circle(x, y, rad, obj_lead_pipe, false, false)
				{
					global.gun = 22;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//Cross Wrench
			if collision_circle(x, y, rad, obj_cross_wrench, false, false)
				{
					global.gun = 23;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//Sawed Off
			if collision_circle(x, y, rad, obj_sawed_off, false, false)
				{
					global.gun = 24;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//AEK-971
			if collision_circle(x, y, rad, obj_aek971, false, false)
				{
					global.gun = 25;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//Baseball Bate
			if collision_circle(x, y, rad, obj_baseball_bat, false, false)
				{
					global.gun = 26;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//Hammer
			if collision_circle(x, y, rad, obj_hammer, false, false)
				{
					global.gun = 27;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
	
			//Katana
			if collision_circle(x, y, rad, obj_katana, false, false)
				{
					global.gun = 28;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//P250S
			if collision_circle(x, y, rad, obj_p250s, false, false)
				{
					global.gun = 29;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//spas 12
			if collision_circle(x, y, rad, obj_spas12, false, false)
				{
					global.gun = 30;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//AN-94
			if collision_circle(x, y, rad, obj_an94, false, false)
				{
					global.gun = 31;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//Balistic Shield
			if collision_circle(x, y, rad, obj_balistic_shield, false, false)
				{
					global.gun = 32;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//Anti-Riot Shield
			if collision_circle(x, y, rad, obj_antiriot_shield, false, false)
				{
					global.gun = 33;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//Taser
			if collision_circle(x, y, rad, obj_taser, false, false)
				{
					global.gun = 34;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//M1911
			if collision_circle(x, y, rad, obj_m1911, false, false)
				{
					global.gun = 35;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//Sledgehammer
			if collision_circle(x, y, rad, obj_sledgehammer, false, false)
				{
					global.gun = 36;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//Drill
			if collision_circle(x, y, rad, obj_drill, false, false)
				{
					global.gun = 37;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//Chainsaw
			if collision_circle(x, y, rad, obj_chainsaw, false, false)
				{
					global.gun = 38;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//MP7-S
			if collision_circle(x, y, rad, obj_mp7s, false, false)
				{
					global.gun = 39;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
			
			//DP-12
			if collision_circle(x, y, rad, obj_dp12, false, false)
				{
					global.gun = 40;
					global.guntaked = true;
					obj_player.cd = true;
					obj_player.throwguns = false;
			
					//stats
					global.gun_taked += 1;
					scr_save_us();
				}
		}
}