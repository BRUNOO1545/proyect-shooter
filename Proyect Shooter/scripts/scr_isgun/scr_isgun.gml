function scr_isgun(){

	//radio de colision
	var rad = 6;

	//ammo
	if collision_circle(x, y, rad, obj_ammo, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_ammo";
		}

	//enemy
	if collision_circle(x, y, rad - 2, obj_enemy, false, false)
		{
			obj_mouse.is_enemy = true;
			mouse_col_with = "obj_enemy";
		}

	//AA-12
	if collision_circle(x, y, rad, obj_aa12, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_aa12";
		}
	
	//FN-FAL
	if collision_circle(x, y, rad, obj_fnfal, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_fnfal";
		}
	
	//ITHACA 37
	if collision_circle(x, y, rad, obj_i37, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_i37";
		}
	
	//MICRO-UZI
	if collision_circle(x, y, rad, obj_mu, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_mu";
		}
	
	//SCAR-L
	if collision_circle(x, y, rad, obj_scarl, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_scarl";
		}
	
	//VECTOR
	if collision_circle(x, y, rad, obj_vector, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_vector";
		}
	
	//AS-VAL
	if collision_circle(x, y, rad, obj_asval, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_asval";
		}

	//S12K
	if collision_circle(x, y, rad, obj_s12k, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_s12k";
		}
	
	//MP5K
	if collision_circle(x, y, rad, obj_mp5k, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_mp5k";
		}
	
	//M416
	if collision_circle(x, y, rad, obj_m416, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_m416";
		}
	
	//DESERT EAGLE
	if collision_circle(x, y, rad, obj_de, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_de";
		}
	
	//THOMPSON
	if collision_circle(x, y, rad, obj_thompson, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_thompson";
		}
	
	//AK74U
	if collision_circle(x, y, rad, obj_ak74u, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_ak74u";
		}
	
	//MP40
	if collision_circle(x, y, rad, obj_mp40, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_mp40";
		}
	
	//Knife
	if collision_circle(x, y, rad, obj_knife, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_knife";
		}

	//Broken Bottle
	if collision_circle(x, y, rad, obj_broken_bottle, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_broken_bottle";
		}

	//Magnum
	if collision_circle(x, y, rad, obj_magnum, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_magnum";
		}

	//Machete
	if collision_circle(x, y, rad, obj_machete, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_machete";
		}
	
	//AK-47
	if collision_circle(x, y, rad, obj_ak47, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_ak47";
		}
	
	//GLOCK 17
	if collision_circle(x, y, rad, obj_glock17, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_glock17";
		}
	
	//M1014
	if collision_circle(x, y, rad, obj_m1014, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_m1014";
		}
	
	//Fire Axe
	if collision_circle(x, y, rad, obj_fire_axe, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_fire_axe";
		}
	
	//Lead Pipe
	if collision_circle(x, y, rad, obj_lead_pipe, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_lead_pipe";
		}
	
	//Cross Wrench
	if collision_circle(x, y, rad, obj_cross_wrench, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_cross_wrench";
		}
	
	//Sawed Off
	if collision_circle(x, y, rad, obj_sawed_off, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_sawed_off";
		}
	
	//AEK-971
	if collision_circle(x, y, rad, obj_aek971, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_aek971";
		}
	
	//Baseball Bat
	if collision_circle(x, y, rad, obj_baseball_bat, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_baseball_bat";
		}
	
	//Hammer
	if collision_circle(x, y, rad, obj_hammer, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_hammer";
		}
	
	//Katana
	if collision_circle(x, y, rad, obj_katana, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_katana";
		}
	
	//P250S
	if collision_circle(x, y, rad, obj_p250s, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_p250s";
		}
	
	//spas 12
	if collision_circle(x, y, rad, obj_spas12, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_spas12";
		}
	
	//AN-94
	if collision_circle(x, y, rad, obj_an94, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_an94";
		}
	
	//Balistic Shield
	if collision_circle(x, y, rad, obj_balistic_shield, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_balistic_shield";
		}
	
	//Anti-Riot Shield
	if collision_circle(x, y, rad, obj_antiriot_shield, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_antiriot_shield";
		}
	
	//Taser
	if collision_circle(x, y, rad, obj_taser, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_taser";
		}
	
	//M1911
	if collision_circle(x, y, rad, obj_m1911, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_m1911";
		}
	
	//Sledgehammer
	if collision_circle(x, y, rad, obj_sledgehammer, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_sledgehammer";
		}
	
	//Drill
	if collision_circle(x, y, rad, obj_drill, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_drill";
		}
	
	//Chainsaw
	if collision_circle(x, y, rad, obj_chainsaw, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_chainsaw";
		}
	
	//MP7-S
	if collision_circle(x, y, rad, obj_mp7s, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_mp7s";
		}
	
	//DP-12
	if collision_circle(x, y, rad, obj_dp12, false, false)
		{
			obj_mouse.is_gun = true;
			mouse_col_with = "obj_dp12";
		}

}