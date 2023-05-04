function scr_guns_test(){

	//llamar al script
	scr_controller_game()

	//test
	image_speed = 0;
	
	//random audio pitch
	randomize();
	var rpitch = random_range(0.6, 0.8);
	
	//variable de armas y camara
	var _gun_is_using, _gun_anim, _gun_anim_use_bullet, _gun_bullets, _gun_cal_bullet, _gun_cal_bullet_used;
	var _gun_repeat, _gun_shoot_sound, _gun_timer, _gun_timer_del_min, _gun_timer_del_max;
	var _gun_timer_del_min_bullet, _gun_timer_del_max_bullet, _gun_timer_no_bullets;
	var _gun_timer_no_bullets, _camera_knock_eff, _camera_shake, _camera_shake_range;

	//segun arma
	if (obj_player.once_gun_shoot_data == true)
		{
	switch global.gun
		{
			//ninguna
			case -1:
				image_index = 0;
				image_speed = 0;
				
				//data
				_gun_is_using = false;
			break;
			
			//AA-12
			case 0:
				//imagen
				image_index = 0;
				image_speed = 0;
				
				//data
				smk_ratio = 40;
				tipe = "shotgun";
				_camera_knock_eff = false;
				_camera_shake_range = 2;
				_camera_shake = true;
				_gun_is_using = true;
				_gun_timer = 20;
				_gun_bullets = global.aa12bullets;
				_gun_shoot_sound = snd_aa12_shoot;
				_gun_repeat = 5;
				_gun_anim = false;
				_gun_cal_bullet = obj_cal12_bullet;
				_gun_cal_bullet_used = obj_cal12_used;
				_gun_timer_no_bullets = 10;
				_gun_timer_del_min = 0;
				_gun_timer_del_max = 0;
				_gun_timer_del_min_bullet = 0;
				_gun_timer_del_max_bullet = 0;
			break;
			/*
			//fnfal
			case 1:
				//imagen
				image_index = 1;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.fnfalbullets <= 0)
							{
								audio_play_sound(snd_fnfal_shoot, 0, false);
								audio_sound_gain(snd_fnfal_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal762_bullet);
								instance_create_depth(x, y, -y, obj_cal762_used);
								global.fnfalbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal762 += 1;
								scr_save_us();
								
								global.timer = 7;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 40;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 10;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//ithaca 37
			case 2:
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.i37bullets <= 0)
							{
								audio_play_sound(snd_i37_shoot, 0, false);
								audio_sound_gain(snd_i37_shoot, global.sfx, 0);
								
								repeat(7)
									{
										instance_create_depth(x, y, -y, obj_cal20_bullet);
									}
								
								global.i37bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal20 += 1;
								scr_save_us();
								
								global.timer = 65;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 45;
								tipe = "shotgun";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 20;
							}
					}
				else
					{
						//imagen
						if ((global.timer < 30) && (global.timer > 20))// && !(global.cal20bullets <= 0)
							{
								image_speed = 1;
							}
						else
							{
								image_speed = 0;
								image_index = 0;
							}
						
						//tirar bala segun rango
						if ((global.timer < 22) && (global.timer > 20)) && (image_speed > 0)// && !(global.cal20bullets <= 0)
							{
								instance_create_depth(x, y, -y, obj_cal20_used);
							}
						
						global.timer -= 1;
					}
			break;
			
			//micro-uzi
			case 3:
				//imagen
				image_index = 3;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.mubullets <= 0)
							{
								audio_play_sound(snd_microuzi_shoot, 0, false);
								audio_sound_gain(snd_microuzi_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
								global.mubullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal9 += 1;
								scr_save_us();
								
								global.timer = 4;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 32;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 10;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//scar-l
			case 4:
				//imagen
				image_index = 4;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.scarlbullets <= 0)
							{
								audio_play_sound(snd_scarl_shoot, 0, false);
								audio_sound_gain(snd_scarl_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal556_bullet);
								instance_create_depth(x, y, -y, obj_cal556_used);
								global.scarlbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal556 += 1;
								scr_save_us();
								
								global.timer = 5;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 40;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 10;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//vector
			case 5:
				//imagen
				image_index = 5;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.vectorbullets <= 0)
							{
								audio_play_sound(snd_vector_shoot, 0, false);
								audio_sound_gain(snd_vector_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
								global.vectorbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal9 += 1;
								scr_save_us();
								
								global.timer = 3;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 35;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 8;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//as val
			case 6:
				//imagen
				image_index = 6;
				image_speed = 0;
			
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.asvalbullets <= 0)
							{
								audio_play_sound(snd_asval_shoot, 0, false);
								audio_sound_gain(snd_asval_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
								global.asvalbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal9 += 1;
								scr_save_us();
								
								global.timer = 3;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 42;
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//S12K
			case 7:
				//imagen
				image_index = 7;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.s12kbullets <= 0)
							{
								audio_play_sound(snd_s12k_shoot, 0, false);
								audio_sound_gain(snd_s12k_shoot, global.sfx, 0);
								
								repeat(5)
									{
										instance_create_depth(x, y, -y, obj_cal12_bullet);
									}
								
								instance_create_depth(x, y, -y, obj_cal12_used);
								global.s12kbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 2;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal12 += 1;
								scr_save_us();
								
								global.timer = 12;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 40;
								tipe = "shotgun";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 10;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//MP5-K
			case 8:
				//imagen
				image_index = 8;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.mp5kbullets <= 0)
							{
								audio_play_sound(snd_mp5k_shoot, 0, false);
								audio_sound_gain(snd_mp5k_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
								global.mp5kbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal9 += 1;
								scr_save_us();
								
								global.timer = 4;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 32;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 8;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//M416
			case 9:
				//imagen
				image_index = 9;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.m416bullets <= 0)
							{
								audio_play_sound(snd_m416_shoot, 0, false);
								audio_sound_gain(snd_m416_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal556_bullet);
								instance_create_depth(x, y, -y, obj_cal556_used);
								global.m416bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal556 += 1;
								scr_save_us();
								
								global.timer = 4;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 40;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//DESERT EAGLE
			case 10:
				//imagen
				image_index = 10;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.debullets <= 0)
							{
								audio_play_sound(snd_de_shoot, 0, false);
								audio_sound_gain(snd_de_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal50ae_bullet);
								instance_create_depth(x, y, -y, obj_cal50ae_used);
								global.debullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal50ae += 1;
								scr_save_us();
								
								global.timer = 15;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 35;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//THOMPSON
			case 11:
				//imagen
				image_index = 11;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.thompsonbullets <= 0)
							{
								audio_play_sound(snd_thompson_shoot, 0, false);
								audio_sound_gain(snd_thompson_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal45acp_bullet);
								instance_create_depth(x, y, -y, obj_cal45acp_used);
								global.thompsonbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 2;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal45acp += 1;
								scr_save_us();
								
								global.timer = 3;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 42;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//AK74U
			case 12:
				//imagen
				image_index = 12;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.ak74ubullets <= 0)
							{
								audio_play_sound(snd_ak74u_shoot, 0, false);
								audio_sound_gain(snd_ak74u_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal545_bullet);
								instance_create_depth(x, y, -y, obj_cal545_used);
								global.ak74ubullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 2;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal545 += 1;
								scr_save_us();
								
								global.timer = 4;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 32;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//MP40
			case 13:
				//imagen
				image_index = 13;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.mp40bullets <= 0)
							{
								audio_play_sound(snd_mp40_shoot, 0, false);
								audio_sound_gain(snd_mp40_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
								global.mp40bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 1;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal9 += 1;
								scr_save_us();
								
								global.timer = 7;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 35;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//Knife
			case 14:
				//imagen
				image_index = 14;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if (global.knifepunch <= 1)
							{
								audio_play_sound(snd_melee_atack, 0, false);
								audio_sound_gain(snd_melee_atack, global.sfx, 0);
								audio_sound_pitch(snd_melee_atack, rpitch);
								instance_create_depth(x, y, -y, obj_hand_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 15;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 7;
							}
					}
				else
					{
						//imagen
						if ((global.timer < 15) && (global.timer > 7))
							{
								image_speed = 1;
							}
						else
							{
								image_speed = 0;
								image_index = 0;
							}
						
						global.timer -= 1;
					}
			break;
			
			//Broken Bottle
			case 15:
				//imagen
				image_index = 15;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if (global.knifepunch <= 1)
							{
								audio_play_sound(snd_melee_atack, 0, false);
								audio_sound_gain(snd_melee_atack, global.sfx, 0);
								audio_sound_pitch(snd_melee_atack, rpitch);
								instance_create_depth(x, y, -y, obj_hand_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 15;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						//imagen
						if ((global.timer < 15) && (global.timer > 7))
							{
								image_speed = 1;
							}
						else
							{
								image_speed = 0;
								image_index = 0;
							}
						global.timer -= 1;
					}
			break;
			
			//Magnum
			case 16:
				//imagen
				image_index = 16;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.magnumbullets <= 0)
							{
								audio_play_sound(snd_magnum_shoot, 0, false);
								audio_sound_gain(snd_magnum_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal50ae_bullet);
								instance_create_depth(x, y, -y, obj_cal50ae_used);
								global.magnumbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal357 += 1;
								scr_save_us();
								
								global.timer = 35;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 32;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 9;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//Machete
			case 17:
				//imagen
				image_index = 17;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if (global.knifepunch <= 1)
							{
								audio_play_sound(snd_melee_atack, 0, false);
								audio_sound_gain(snd_melee_atack, global.sfx, 0);
								audio_sound_pitch(snd_melee_atack, rpitch);
								instance_create_depth(x, y, -y, obj_hand_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 15;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 12;
							}
					}
				else
					{
						//imagen
						if ((global.timer < 15) && (global.timer > 7))
							{
								image_speed = 1;
							}
						else
							{
								image_speed = 0;
								image_index = 0;
							}
						global.timer -= 1;
					}
			break;
			
			//AK47
			case 18:
				//imagen
				image_index = 18;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.ak47bullets <= 0)
							{
								audio_play_sound(snd_ak47_shoot, 0, false);
								audio_sound_gain(snd_ak47_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal762_bullet);
								instance_create_depth(x, y, -y, obj_cal762_used);
								global.ak47bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal762 += 1;
								scr_save_us();
								
								global.timer = 6;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 40;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 10;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//GLOCK 17
			case 19:
				//imagen
				image_index = 19;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.glock17bullets <= 0)
							{
								audio_play_sound(snd_glock17_shoot, 0, false);
								audio_sound_gain(snd_glock17_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal762_bullet);
								instance_create_depth(x, y, -y, obj_cal762_used);
								global.glock17bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal9 += 1;
								scr_save_us();
								
								global.timer = 10;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 32;
								tipe = "normal";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 10;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//M1014
			case 20:
				//imagen
				image_index = 20;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.m1014bullets <= 0)
							{
								audio_play_sound(snd_s12k_shoot, 0, false);
								audio_sound_gain(snd_s12k_shoot, global.sfx, 0);
								
								repeat(8)
									{
										instance_create_depth(x, y, -y, obj_cal12_bullet);
									}
								
								instance_create_depth(x, y, -y, obj_cal12_used);
								global.m1014bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 2;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal12 += 1;
								scr_save_us();
								
								global.timer = 20;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 40;
								tipe = "shotgun";
								scr_create_smoke();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 10;
							}
					}
				else
					{
						global.timer -= 1;
					}
			break;
			
			//Fire Axe
			case 21:
				//imagen
				image_index = 21;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if (global.knifepunch <= 1)
							{
								audio_play_sound(snd_melee_atack, 0, false);
								audio_sound_gain(snd_melee_atack, global.sfx, 0);
								audio_sound_pitch(snd_melee_atack, rpitch);
								instance_create_depth(x, y, -y, obj_hand_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 30;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 12;
							}
					}
				else
					{
						//imagen
						if ((global.timer < 20) && (global.timer > 7))
							{
								image_speed = 1;
							}
						else
							{
								image_speed = 0;
								image_index = 0;
							}
						
						global.timer -= 1;
					}
			break;
			
			//Lead Pipe
			case 22:
				//imagen
				image_index = 22;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if (global.knifepunch <= 1)
							{
								audio_play_sound(snd_melee_atack, 0, false);
								audio_sound_gain(snd_melee_atack, global.sfx, 0);
								audio_sound_pitch(snd_melee_atack, rpitch);
								instance_create_depth(x, y, -y, obj_hand_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 15;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 12;
							}
					}
				else
					{
						//imagen
						if ((global.timer < 20) && (global.timer > 7))
							{
								image_speed = 1;
							}
						else
							{
								image_speed = 0;
								image_index = 0;
							}
						
						global.timer -= 1;
					}
			break;
			
			//Cross Wrench
			case 23:
				//imagen
				image_index = 23;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if (global.knifepunch <= 1)
							{
								audio_play_sound(snd_melee_atack, 0, false);
								audio_sound_gain(snd_melee_atack, global.sfx, 0);
								audio_sound_pitch(snd_melee_atack, rpitch);
								instance_create_depth(x, y, -y, obj_hand_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 30;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 18;
							}
					}
				else
					{
						//imagen
						if ((global.timer < 20) && (global.timer > 7))
							{
								image_speed = 1;
							}
						else
							{
								image_speed = 0;
								image_index = 0;
							}
						
						global.timer -= 1;
					}
			break;*/
		}
			
			obj_player.once_gun_shoot_data = false;
		}
	
	//disparar
	if (_gun_is_using == true)
		{
			if (playerfire) && (_gun_timer <= 0) && (obj_player.canshoot == true)
				{
					//comprobar balas
					if !(_gun_bullets <= 0)
						{
							audio_play_sound(_gun_shoot_sound, 0, false);
							audio_sound_gain(_gun_shoot_sound, global.sfx, 0);
					
							repeat(_gun_repeat)
								{
									instance_create_depth(x, y, -y, _gun_cal_bullet);
								}
					
							if (_gun_anim_use_bullet == false)
								{
									instance_create_depth(x, y, -y, _gun_cal_bullet_used);
								}
								
							//camera control
							obj_camera_control.knock_eff = _camera_knock_eff;
							obj_camera_control.range = _camera_shake_range;
							obj_camera_control.shake = _camera_shake;
					
							_gun_bullets -= 1;
							global.timer = _gun_timer;
					
							//vibracion
							scr_controller_vibration();
					
							//smoke
							scr_create_smoke();
						}
					else
						{
							audio_play_sound(snd_no_bullets, 0, false);
							audio_sound_gain(snd_no_bullets, global.sfx, 0);
							global.timer = _gun_timer_no_bullets;
						}
				}
			else
				{
					//imagen
					if (_gun_anim == true)
						{
							//img
							if ((global.timer < _gun_timer_del_min) && (global.timer > _gun_timer_del_max))
								{
									image_speed = 1;
								}
							else
								{
									image_speed = 0;
									image_index = 0;
								}
					
							//tirar bala segun rango
							if (_gun_anim_use_bullet == true)
								{
									if ((global.timer < _gun_timer_del_min_bullet) && (global.timer > _gun_timer_del_max_bullet)) && (image_speed > 0)
										{
											instance_create_depth(x, y, -y, _gun_cal_bullet_used);
										}
								}
						}
						
					global.timer -= 1;
				}
		}

}