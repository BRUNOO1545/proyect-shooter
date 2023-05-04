function scr_activate_important_obj(){

#region //objectos inportantes
	instance_activate_object(obj_pause);
	instance_activate_object(obj_gunbar);
	instance_activate_object(obj_loadout_help);
	instance_activate_object(obj_debug);
	instance_activate_object(obj_discord_rich);
	instance_activate_object(obj_version);
	instance_activate_object(obj_audio_pitch);
	instance_activate_object(obj_create_water);
	instance_activate_object(obj_altf5);
	instance_activate_object(obj_camera_center);
	instance_activate_object(obj_dots);
#endregion

#region //ingame objects
	instance_activate_object(obj_player);
	instance_activate_object(obj_player_col);
	instance_activate_object(obj_game_bg);
	instance_activate_object(obj_mouse);
	instance_activate_object(obj_enemy);				//enemigo
	instance_activate_object(obj_blood);				//puede desactivarse
	instance_activate_object(obj_blood_dots_eff);
	instance_activate_object(obj_enemy_dead);
	instance_activate_object(obj_enemy_dead_anim);
	instance_activate_object(obj_enemy_bp_arm);
#endregion

#region	//bullet
	instance_activate_object(obj_bullet_collision);
	instance_activate_object(obj_cal12_bullet);
	instance_activate_object(obj_cal20_bullet);
	instance_activate_object(obj_cal357_bullet);
	instance_activate_object(obj_cal45acp_bullet);
	instance_activate_object(obj_cal50ae_bullet);
	instance_activate_object(obj_cal545_bullet);
	instance_activate_object(obj_cal556_bullet);
	instance_activate_object(obj_cal762_used);
	instance_activate_object(obj_cal9_bullet);
#endregion

#region	//guns
	instance_activate_object(obj_gun_col);
	instance_activate_object(obj_aa12);
	instance_activate_object(obj_fnfal);
	instance_activate_object(obj_i37);
	instance_activate_object(obj_mu);
	instance_activate_object(obj_scarl);
	instance_activate_object(obj_vector);
	instance_activate_object(obj_asval);
	instance_activate_object(obj_s12k);
	instance_activate_object(obj_mp5k);
	instance_activate_object(obj_m416);
	instance_activate_object(obj_de);
	instance_activate_object(obj_thompson);
	instance_activate_object(obj_ak74u);
	instance_activate_object(obj_mp40);
	instance_activate_object(obj_magnum);
	instance_activate_object(obj_ak47);
	instance_activate_object(obj_glock17);
	instance_activate_object(obj_m1014);
	instance_activate_object(obj_sawed_off);
	instance_activate_object(obj_aek971);
	instance_activate_object(obj_p250s);
	instance_activate_object(obj_spas12);
	instance_activate_object(obj_an94);
	instance_activate_object(obj_m1911);
	instance_activate_object(obj_mp7s);
#endregion

#region	//hand guns
	instance_activate_object(obj_knife);
	instance_activate_object(obj_broken_bottle);
	instance_activate_object(obj_machete);
	instance_activate_object(obj_fire_axe);
	instance_activate_object(obj_lead_pipe);
	instance_activate_object(obj_cross_wrench);
	instance_activate_object(obj_baseball_bat);
	instance_activate_object(obj_hammer);
	instance_activate_object(obj_katana);
	instance_activate_object(obj_balistic_shield);
	instance_activate_object(obj_antiriot_shield);
	instance_activate_object(obj_taser);
	instance_activate_object(obj_sledgehammer);
	instance_activate_object(obj_drill);
	instance_activate_object(obj_chainsaw);
#endregion

}