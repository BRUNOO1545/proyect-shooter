function scr_guns(){

	//llamar al script
	scr_controller_game()
	
	//test
	image_speed = 0;
	
	//random audio pitch
	randomize();
	var rpitch = random_range(0.6, 0.8);
	var rpitch_taser = random_range(0.9, 1.1);
	var rpitch_drill = 1;//random_range(0.9, 1.1);
	
	//audio selector
	static once_audio = true;
	static once_audio_end = false;

	//segun arma
	switch (global.gun)
		{
			//ninguna
			case -1:
				//image_index = 0;
				//image_speed = 0;
			break;
			
			//AA-12
			case 0:
				//imagen
				image_index = 0;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.aa12bullets <= 0)
							{
								audio_play_sound(snd_aa12_shoot, 0, false);
								audio_sound_gain(snd_aa12_shoot, global.sfx, 0);
								
								repeat(5)
									{
										instance_create_depth(x, y, -y, obj_cal12_bullet);
									}
								
								instance_create_depth(x, y, -y, obj_cal12_used);
								global.aa12bullets -= 1;
								
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
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
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
			break;
			
			//Sawed Off
			case 24:
				//imagen
				image_index = 24;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.sawedoffbullets <= 0)
							{
								audio_play_sound(snd_magnum_shoot, 0, false);
								audio_sound_gain(snd_magnum_shoot, global.sfx, 0);
								
								if (global.sawedoffbullets == 1)
									{
										repeat(5)
											{
												instance_create_depth(x, y, -y, obj_cal20_bullet);
											}
								
										instance_create_depth(x, y, -y, obj_cal20_used);
									}
								else
									{
										repeat(10)
											{
												instance_create_depth(x, y, -y, obj_cal20_bullet);
											}
								
										repeat(2)
											{
												instance_create_depth(x, y, -y, obj_cal20_used);
											}
									}
								
								global.sawedoffbullets -= 2;
								
								//reiniciar si se queda en -1
								if (global.sawedoffbullets < 0)
									{
										global.sawedoffbullets = 0;
									}
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 4;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 2;
								global.shoot_cal20 += 2;
								scr_save_us();
								
								global.timer = 14;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 32;
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
			
			//AEK-971
			case 25:
				//imagen
				image_index = 25;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.aek971bullets <= 0)
							{
								audio_play_sound(snd_ak47_shoot, 0, false);
								audio_sound_gain(snd_ak47_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal545_bullet);
								instance_create_depth(x, y, -y, obj_cal545_used);
								global.aek971bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 2;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal545 += 1;
								scr_save_us();
								
								global.timer = 5;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 50;
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
			
			//Baseball Bat
			case 26:
				//imagen
				image_index = 26;
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
								
								global.timer = 40;
								
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
			break;
			
			//Hammer
			case 27:
				//imagen
				image_index = 27;
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
								
								global.timer = 50;
								
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
			break;
			
			//Katana
			case 28:
				//imagen
				image_index = 28;
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
								
								global.timer = 40;
								
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
			break;
			
			//P250S
			case 29:
				//imagen
				image_index = 29;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.p250sbullets <= 0)
							{
								audio_play_sound(snd_p250s_shoot, 0, false);
								audio_sound_gain(snd_p250s_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
								global.p250sbullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal9 += 1;
								scr_save_us();
								
								global.timer = 20;
								
								//vibracion
								scr_controller_vibration();
								
								//smoke
								smk_ratio = 40;
								tipe = "silenced_normal";
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
			
			//Spas 12
			case 30:
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.spas12bullets <= 0)
							{
								audio_play_sound(snd_i37_shoot, 0, false);
								audio_sound_gain(snd_i37_shoot, global.sfx, 0);
								
								repeat(7)
									{
										instance_create_depth(x, y, -y, obj_cal12_bullet);
									}
								
								global.spas12bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal12 += 1;
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
								instance_create_depth(x, y, -y, obj_cal12_used);
							}
						
						global.timer -= 1;
					}
			break;
			
			//AN-94
			case 31:
				//imagen
				image_index = 31;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.an94bullets <= 0)
							{
								audio_play_sound(snd_ak47_shoot, 0, false);
								audio_sound_gain(snd_ak47_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal545_bullet);
								instance_create_depth(x, y, -y, obj_cal545_used);
								global.an94bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal545 += 1;
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
			
			//Balistic Shield
			case 32:
				//imagen
				image_index = 32;
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
								instance_create_depth(x, y, -y, obj_shield_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 40;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_no_bullets, 0, false);
								audio_sound_gain(snd_no_bullets, global.sfx, 0);
								global.timer = 30;
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
			
			//Anti-Riot Shield
			case 33:
				//imagen
				image_index = 33;
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
								instance_create_depth(x, y, -y, obj_shield_atack);
								
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
								global.timer = 20;
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
			
			//Taser
			case 34:
				//imagen
				image_index = 34;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.taserbatery <= 0)
							{
								audio_play_sound(snd_taser_atack, 0, false);
								audio_sound_gain(snd_taser_atack, global.sfx, 0);
								audio_sound_pitch(snd_taser_atack, rpitch_taser);
								instance_create_depth(x, y, -y, obj_taser_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								randomize();
								global.timer = random_range(1, 2);
								global.taserbatery -= 2;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								audio_play_sound(snd_taser_no_batery, 0, false);
								audio_sound_gain(snd_taser_no_batery, global.sfx, 0);
								global.timer = 20;
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
						
						if !(playerfire) && (global.taserbatery < global.taserbaterymax)
							{
								global.taserbatery += 1;
							}
					}
			break;
			
			//M1911
			case 35:
				//imagen
				image_index = 35;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.m1911bullets <= 0)
							{
								audio_play_sound(snd_m1911_shoot, 0, false);
								audio_sound_gain(snd_m1911_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal45acp_bullet);
								instance_create_depth(x, y, -y, obj_cal45acp_used);
								global.m1911bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal45acp += 1;
								scr_save_us();
								
								global.timer = 13;
								
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
			
			//Sledgehammer
			case 36:
				//imagen
				image_index = 36;
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
								
								global.timer = 45;
								
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
			break;
			
			//Drill
			case 37:
				//imagen
				image_index = 37;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.drillbatery <= 0)
							{
								//inicio
								if (once_audio == true)
									{
										audio_play_sound(snd_drill_start, 0, false);
										audio_sound_gain(snd_drill_start, global.sfx, 0);
										
										once_audio = false;
										once_audio_end = true;
									}
								
								audio_play_sound(snd_drill_static, 0, false);
								audio_sound_gain(snd_drill_static, global.sfx, 0);
								audio_sound_pitch(snd_drill_static, rpitch_drill);
								
								instance_create_depth(x, y, -y, obj_drill_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								randomize();
								global.timer = random_range(1, 2);
								global.drillbatery -= 2;
								
								//vibracion
								scr_controller_vibration();
							}
						else
							{
								//audio para parar
								if (once_audio_end == true)
									{
										//end
										audio_stop_sound(snd_drill_static);
										audio_play_sound(snd_drill_end, 0, false);
										audio_sound_gain(snd_drill_end, global.sfx, 0);
								
										once_audio_end = false;
										once_audio = true;
									}
								
								global.timer = 20;
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
						
						if !(playerfire) && (global.drillbatery < global.drillbaterymax)
							{
								audio_stop_sound(snd_drill_static);
								global.drillbatery += 1;
							}
						
						//reporucir audio 1 vez
						if !(playerfire) && (once_audio_end == true)
							{
								//end
								audio_stop_sound(snd_drill_static);
								audio_play_sound(snd_drill_end, 0, false);
								audio_sound_gain(snd_drill_end, global.sfx, 0);
								
								once_audio_end = false;
								once_audio = true;
							}
					}
			break;
			
			//Chainsaw
			case 38:
				//imagen
				image_index = 38;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.chainsawgas <= 0)
							{
								audio_play_sound(snd_melee_atack, 0, false);
								audio_sound_gain(snd_melee_atack, global.sfx, 0);
								audio_sound_pitch(snd_melee_atack, rpitch);
								instance_create_depth(x, y, -y, obj_drill_atack);
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 0;
								obj_camera_control.shake = false;
								
								global.timer = 1;
								global.chainsawgas -= 4;
								
								if (global.chainsawgas < 0)
									{
										global.chainsawgas = -0;
									}
								
								//smoke
								smk_ratio = 20;
								tipe = "chainsaw";
								scr_create_smoke();
								
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
			break;
			
			//MP7-S
			case 39:
				//imagen
				image_index = 39;
				image_speed = 0;
				
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.mp7sbullets <= 0)
							{
								audio_play_sound(snd_mp7s_shoot, 0, false);
								audio_sound_gain(snd_mp7s_shoot, global.sfx, 0);
								instance_create_depth(x, y, -y, obj_cal9_bullet);
								instance_create_depth(x, y, -y, obj_cal9_used);
								global.mp7sbullets -= 1;
								
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
								tipe = "silenced_normal";
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
			
			//DP-12 //////////////No esta bien aplicado, recarga cada un tiro en vez de 2
			case 40:
				//disparar
				if (playerfire) && (global.timer <= 0) && (obj_player.canshoot == true)
					{
						//comprobar balas
						if !(global.dp12bullets <= 0)
							{
								audio_play_sound(snd_i37_shoot, 0, false);
								audio_sound_gain(snd_i37_shoot, global.sfx, 0);
								
								repeat(7)
									{
										instance_create_depth(x, y, -y, obj_cal12_bullet);
									}
								
								global.dp12bullets -= 1;
								
								//camera control
								obj_camera_control.knock_eff = false;
								obj_camera_control.range = 3;
								obj_camera_control.shake = true;
								
								//stats
								global.user_shoots += 1;
								global.shoot_cal12 += 1;
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
								instance_create_depth(x, y, -y, obj_cal12_used);
							}
						
						global.timer -= 1;
					}
			break;
			
			
		}

}