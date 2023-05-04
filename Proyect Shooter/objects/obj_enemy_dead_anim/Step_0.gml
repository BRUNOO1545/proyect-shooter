randomize();
depth = 3;
image_angle = ia;
image_xscale = global.enemy_xcale + xcl;
image_yscale = global.enemy_xcale + xcl;

if (once == true)
	{
		//discord
		global.actual_enemy_killed += 1;
		
		//elejir segun arma
		switch (global.gun_type_to_enemy)
			{
				case "shotgun":
					si = choose(spr_ed_anim_2, spr_ed_anim_3, spr_ed_anim_5);
					sprite_index = si;
					
					if (si == spr_ed_anim_3)
						{
							//stats
							global.enemy_arms += 1;
							scr_save_us();
							
							instance_create_depth(x, y, 3, obj_enemy_bp_arm);
						}
					else
						{
							//stats
							global.enemy_destroyed += 1;
							scr_save_us();
						}
					
					randomize();
					image_speed = random_range(0.05, 0.30);
				break;
				
				case "fusil":
					si = choose(spr_ed_anim_1, spr_ed_anim_4);
					sprite_index = si;
					
					if (si == spr_ed_anim_1)
						{
							//stats
							global.enemy_destroyed += 1;
							scr_save_us();
						}
					
					randomize();
					image_speed = random_range(0.2, 0.5);
				break;
				
				case "hand":
					si = choose(spr_ed_anim_6, spr_ed_anim_7);
					sprite_index = si;
					
					//stats
					global.enemy_destroyed += 1;
					scr_save_us();
					
					randomize();
					image_index = irandom_range(0, 2);
					image_speed = 0;
				break;
				
				case "knifed":
					si = choose(spr_ed_anim_6, spr_ed_anim_7);
					sprite_index = si;
					
					//stats
					global.enemy_destroyed += 1;
					scr_save_us();
					
					randomize();
					image_index = irandom_range(0, 2);
					image_speed = 0;
				break;
				
				case "katana":
					si = spr_ed_anim_8;
					sprite_index = si;
					
					//stats
					global.enemy_heads += 1;
					scr_save_us();
					
					instance_create_depth(x, y, 3, obj_enemy_bp_head);
					
					randomize();
					image_index = irandom_range(0, 2);
					image_speed = 0;
				break;
				
				case "taser":
					si = spr_et_anim_1;
					sprite_index = si;
					
					//stats
					global.enemy_electroshocked += 1;
					scr_save_us();
					
					//instance_create_depth(x, y, 3, obj_enemy_bp_head);
					
					randomize();
					image_index = irandom_range(0, 2);
					image_speed = 0;
				break;
				
				case "drill":
					si = spr_ed_anim_1;
					sprite_index = si;
					
					//stats
					global.enemy_drilled += 1;
					scr_save_us();
					
					//instance_create_depth(x, y, 3, obj_enemy_bp_head);
					
					randomize();
					image_index = irandom_range(0, 2);
					image_speed = 0;
				break;
			}
		
		//score
		obj_gunbar.player_score += 150;
		
		//gore
		//scr_create_gore_anim();
		
		//data
		once = false;
	}

//pisar cadaver
if !(global.controller == -1)
	{
		if instance_exists(obj_player) && (global.gamepad_vibration == 1)
			{
				scr_controller_game()

				if collision_circle(x, y, 3, obj_player, false, false) && ((playerh != 0) && (playerv != 0))
					{
						gamepad_set_vibration(global.controller, 0.1, 0.1);
						obj_player.alarm[2] = 10;
					}
			}
	}

//gore move
if (speed <= 0)
	{
		speed = 0;

		//sangle
		if (once_blood == true)
			{
				//data
				once_blood = false;
		
				//gore
				scr_create_gore_anim();
			}
	}
else
	{
		speed -= 0.5;
		
		if !(global.gun_type_to_enemy == "taser")
			{
				instance_create_depth(x, y, 4, obj_blood_tipes_2);
			}
	}


//anims
switch (si)
	{
		case spr_ed_anim_1:
			if (image_index >= 3)
				{
					image_speed = 0;
				}
		break;
		
		case spr_ed_anim_2:
			if (image_index >= 6)
				{
					image_speed = 0;
				}
		break;
		
		case spr_ed_anim_3:
			if (image_index >= 6)
				{
					image_speed = 0;
				}
		break;
		
		case spr_ed_anim_4:
			if (image_index >= 18)
				{
					image_speed = 0;
				}
			/*
			//gore
			if (image_index >= 1) && (once_gore == true)
				{
					scr_create_gore_anim();
				}*/
		break;
		
		case spr_ed_anim_5:
			if (image_index >= 1)
				{
					image_speed = 0;
				}
		break;
		
		//taser
		case spr_et_anim_1:
			image_speed = 0.8;
		break;
	}