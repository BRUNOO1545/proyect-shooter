///control de noqueos de los enemigos
function scr_enemy_knock(){
	
	//alarm[0] = knock; alarm[1] = kill;
	
	//radio de colision
	var rad = 20;

	//AA 12
	var near = instance_nearest(x, y, obj_aa12);
	
	if collision_circle(x, y, rad, obj_aa12, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//FN FAL
	var near = instance_nearest(x, y, obj_fnfal);
	
	if collision_circle(x, y, rad, obj_fnfal, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//ITHACA 37
	var near = instance_nearest(x, y, obj_i37);
	
	if collision_circle(x, y, rad, obj_i37, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//MICRO UZI
	var near = instance_nearest(x, y, obj_mu);
	
	if collision_circle(x, y, rad, obj_mu, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//SCAR L
	var near = instance_nearest(x, y, obj_scarl);
	
	if collision_circle(x, y, rad, obj_scarl, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//VECTOR
	var near = instance_nearest(x, y, obj_vector);
	
	if collision_circle(x, y, rad, obj_vector, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//AS VAL
	var near = instance_nearest(x, y, obj_asval);
	
	if collision_circle(x, y, rad, obj_asval, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//SAIGA 12K
	var near = instance_nearest(x, y, obj_s12k);
	
	if collision_circle(x, y, rad, obj_s12k, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//MP5K
	var near = instance_nearest(x, y, obj_mp5k);
	
	if collision_circle(x, y, rad, obj_mp5k, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//M416
	var near = instance_nearest(x, y, obj_m416);
	
	if collision_circle(x, y, rad, obj_m416, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}

	//DESERT EAGLE
	var near = instance_nearest(x, y, obj_de);
	
	if collision_circle(x, y, rad, obj_de, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//THOMPSON
	var near = instance_nearest(x, y, obj_thompson);
	
	if collision_circle(x, y, rad, obj_thompson, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//AK74U
	var near = instance_nearest(x, y, obj_ak74u);
	
	if collision_circle(x, y, rad, obj_ak74u, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//MP40
	var near = instance_nearest(x, y, obj_mp40);
	
	if collision_circle(x, y, rad, obj_mp40, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//Knife
	var near = instance_nearest(x, y, obj_knife);
	
	if collision_circle(x, y, rad, obj_knife, false, false) && (near.speed > 0) && (state != "knocked")
		{
			alarm[1] = 1;
		}
	
	//Broken Bottle
	var near = instance_nearest(x, y, obj_broken_bottle);
	
	if collision_circle(x, y, rad, obj_broken_bottle, false, false) && (near.speed > 0) && (state != "knocked")
		{
			alarm[1] = 1;
		}
	
	//Magnum
	var near = instance_nearest(x, y, obj_magnum);
	
	if collision_circle(x, y, rad, obj_magnum, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//Machete
	var near = instance_nearest(x, y, obj_machete);
	
	if collision_circle(x, y, rad, obj_machete, false, false) && (near.speed > 0) && (state != "knocked")
		{
			alarm[1] = 1;
		}
	
	//AK-47
	var near = instance_nearest(x, y, obj_ak47);
	
	if collision_circle(x, y, rad, obj_ak47, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//GLOCK 17
	var near = instance_nearest(x, y, obj_glock17);
	
	if collision_circle(x, y, rad, obj_glock17, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//M1014
	var near = instance_nearest(x, y, obj_m1014);
	
	if collision_circle(x, y, rad, obj_m1014, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//Fire Axe
	var near = instance_nearest(x, y, obj_fire_axe);
	
	if collision_circle(x, y, rad, obj_fire_axe, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Lead Pipe
	var near = instance_nearest(x, y, obj_lead_pipe);
	
	if collision_circle(x, y, rad, obj_lead_pipe, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Cross Wrench
	var near = instance_nearest(x, y, obj_cross_wrench);
	
	if collision_circle(x, y, rad, obj_cross_wrench, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Sawed Off
	var near = instance_nearest(x, y, obj_sawed_off);
	
	if collision_circle(x, y, rad, obj_sawed_off, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//AEK-971
	var near = instance_nearest(x, y, obj_aek971);
	
	if collision_circle(x, y, rad, obj_aek971, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//Baseball Bat
	var near = instance_nearest(x, y, obj_baseball_bat);
	
	if collision_circle(x, y, rad, obj_baseball_bat, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Hammer
	var near = instance_nearest(x, y, obj_hammer);
	
	if collision_circle(x, y, rad, obj_hammer, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Katana
	var near = instance_nearest(x, y, obj_katana);
	
	if collision_circle(x, y, rad, obj_katana, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//P250s
	var near = instance_nearest(x, y, obj_p250s);
	
	if collision_circle(x, y, rad, obj_p250s, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//spas 12
	var near = instance_nearest(x, y, obj_spas12);
	
	if collision_circle(x, y, rad, obj_spas12, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//AN-94
	var near = instance_nearest(x, y, obj_an94);
	
	if collision_circle(x, y, rad, obj_an94, false, false) && (near.speed > 0)
		{
			alarm[0] = 1;
		}
	
	//Balistic Shield
	var near = instance_nearest(x, y, obj_balistic_shield);
	
	if collision_circle(x, y, rad, obj_balistic_shield, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Anti-Riot Shield
	var near = instance_nearest(x, y, obj_antiriot_shield);
	
	if collision_circle(x, y, rad, obj_antiriot_shield, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Taser
	var near = instance_nearest(x, y, obj_taser);
	
	if collision_circle(x, y, rad, obj_taser, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//M1911
	var near = instance_nearest(x, y, obj_m1911);
	
	if collision_circle(x, y, rad, obj_m1911, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Sledgehammer
	var near = instance_nearest(x, y, obj_sledgehammer);
	
	if collision_circle(x, y, rad, obj_sledgehammer, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Drill
	var near = instance_nearest(x, y, obj_drill);
	
	if collision_circle(x, y, rad, obj_drill, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//Chainsaw
	var near = instance_nearest(x, y, obj_chainsaw);
	
	if collision_circle(x, y, rad, obj_chainsaw, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}
	
	//MP7-S
	var near = instance_nearest(x, y, obj_mp7s);
	
	if collision_circle(x, y, rad, obj_mp7s, false, false) && (near.speed > 0)// && (state != "knocked")
		{
			alarm[0] = 1;
		}

}