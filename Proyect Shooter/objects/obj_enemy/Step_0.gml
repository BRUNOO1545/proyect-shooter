/// @description state machine
randomize();
var tg = obj_player;
var tg_blt = obj_bullet_collision;

//img
image_xscale = imgxcale;
image_yscale = imgxcale;

//col
scr_enemy_knock();

//save var
if (sv == true)
	{
		hspeed = hspd;
		vspeed = vspd;
		speed = spd;
	}

#region //colisiones con armas especiales

	//taser
	if collision_circle(x, y, 20, obj_taser_atack, false, false)
		{
			//tased
			enemy_taser_can_punch = false;
			enemy_tased = true;
			enemy_tasing = true;
			state = "tased";
		}
	else
		{
			enemy_tasing = false;
		}
	
	//drill
	if collision_circle(x, y, 20, obj_drill_atack, false, false)
		{
			//tased
			enemy_taser_can_punch = false;
			enemy_drilled = true;
			enemy_drilling = true;
			state = "drilled";
		}
	else
		{
			enemy_tasing = false;
		}

#endregion

//state
switch (state)
	{

#region //quiet
		case "quiet":
			if (enemy_taser_can_punch == true)
				{
					spd = 0;
					depth = 1;
					global.imgang = direction;
					enemy_knifed = false;
			
					//ver
					if (svver == false)
						{
							sv = false;
						}
					else
						{
							sv = true;
							svver = false;
						}
			
					if (rw == false)
						{
							if (rwtimer < 0)
								{
									randomize();
									direction = random_range(0, 360);
									image_angle = direction;
									rwtimer = random_range(30, 300);
									rw = choose(false, false, true, true);
								}
							else
								{
									rwtimer -= 1;
								}
						}
					else
						{
							state = "walk";
						}
			
					//state change
					//follow
					if (instance_exists(tg)) && (distance_to_object(tg) < 255)
						{
							state = "follow";
						}
			
					//alert
					if (instance_exists(tg_blt)) && (distance_to_object(tg_blt) < 96)
						{
							svtimer = 0;
							state = "alert";
						}
				}
		break;
#endregion

#region //walk
		case "walk":
			if (enemy_taser_can_punch == true)
				{
					spd = 1;
					depth = 1;
					global.imgang = direction;
					enemy_knifed = false;
			
					//ver
					if (svver == false)
						{
							sv = false;
						}
					else
						{
							sv = true;
							svver = false;
						}
			
					if (svtimer < 0)
						{
							svtimer = random_range(30, 300);
							coll = choose(false, true);
							wt = choose(false, false, false, false, false, false, true, true);
						}
					else
						{
							svtimer -= 1;
						}
			
					//state
					if (wt == true)
						{
							sv = true;
							spd = 0;
							state = "quiet";
						}
			
					if (coll == true)
						{
							randomize();
							direction = choose(-90, 90);
							image_angle = direction;
							speed = spd;
							coll = false;
						}
			
					//state change
					//follow
					if (instance_exists(tg)) && (distance_to_object(tg) < 255)
						{
							state = "follow";
						}
			
					//alert
					if (instance_exists(tg_blt)) && (distance_to_object(tg_blt) < 96)
						{
							svtimer = 0;
							state = "alert";
						}
				}
		break;
#endregion

#region //alert
		case "alert":
			if (enemy_taser_can_punch == true)
				{
					spd = 3;
					depth = 1;
					global.imgang = direction;
					enemy_knifed = false;
			
					//ver
					if (svver == false)
						{
							sv = false;
						}
					else
						{
							sv = true;
							svver = false;
						}
			
					if (svtimer < 0)
						{
							randomize();
							svtimer = random_range(50, 400);
							coll = choose(false, true, true, true);
							wt = choose(false, false, false, false, false, false, false, true);
						}
					else
						{
							svtimer -= 1;
						}
			
					//state
					if (wt == true)
						{
							randomize();
							sv = true;
							spd = 0;
							state = choose("quiet", "walk");
						}
			
					if (coll == true)
						{
							randomize();
							direction = random_range(-90, 90);
							image_angle = direction;
							speed = spd;
							coll = false;
						}
			
					//follow
					if (instance_exists(tg)) && (distance_to_object(tg) < 255)
						{
							state = "follow";
						}
				}
		break;
#endregion

#region //follow
		case "follow":
			//comprobar que no esta siendo taseado
			if (enemy_taser_can_punch == true)
				{
					sv = true;
					depth = 1;
					global.imgang = direction;
					enemy_knifed = false;
			
					//exists
					if instance_exists(tg)
						{
							var _dist, _dir;
							_dist = point_distance(x, y, tg.x, tg.y);
							_dir = point_direction(x, y, tg.x, tg.y);
					
							if (distance_to_object(tg) < 320)
								{
									hspd = lengthdir_x(_dist, _dir);
									vspd = lengthdir_y(_dist, _dir);
									spd = 4;
									image_angle = _dir;
								}
							else
								{
									state = "walk";
								}
						}
					else
						{
							svver = true;
							state = choose("quiet", "walk", "alert");
						}
			
					//punch
					if (instance_exists(tg)) && (distance_to_object(tg) < 0.1)
						{
							sprite_index = spr_enemy_punch;
							image_speed = 1;
					
							if (distance_to_object(tg) <= 0)
								{
									speed = 0;
								}
					
							//create enemy punch
							if (sprite_index == spr_enemy_punch) && (image_index == 2)
								{
									instance_create_depth(x, y, -y, obj_enemy_punch);
								}
						}
					else
						{
							sprite_index = spr_enemy_nogun;
							image_speed = 0;
						}
				}
		break;
#endregion

#region //knocked
		case "knocked":
			sv = true;
			depth = 3;
			global.imgang = direction;
			enemy_knifed = false;
			
			//bajar velocidad
			if (spd <= 0)
				{
					spd = 0;
				}
			else
				{
					spd -= random_range(0.2, 0.4);
				}
			
			//cambiar estado
			if (ktimer < 0)
				{
					state = "walk";
					ktimer = 300;
					sprite_index = spr_enemy_nogun;
					image_index = 0;
					image_speed = 1;
					knock = false;
					once = true;
				}
			else
				{
					ktimer -= 1;
					randomize();
					sprite_index = spr_enemy_knock;
					
					if (rimg == true)
						{
							//image_index = irandom_range(0, 4);
							image_index = 0;
							rimg = false;
						}
					
					image_speed = 0;
					knock = true;
				}
		break;
#endregion

#region //dead
		case "dead":
			sv = true;
			spd = 0;
			obj_game_bg.flash = true;
			depth = 1;
			global.imgang = image_angle;
			global.enemy_direction = direction;
			
			if ((enemy_knifed == false) && (enemy_tased == false) && (enemy_drilled == false))
				{
					instance_create_depth(x, y, 4, obj_blood_tipes);
					
					//sangre
					repeat(20)
						{
							instance_create_depth(x, y, 2, obj_blood_dots_eff);
						}
				}
			
			//instance_create_depth(x, y, 4, obj_enemy_dead);
			instance_create_depth(x, y, 4, obj_enemy_dead_anim);
			
			//guardar
			global.user_kills += 1;
			scr_save_us();
			
			//create gun
			randomize();
			scr_enemy_drop_gun();
			
			var ing = instance_nearest(x, y, string(gun));
			ing.image_angle = image_angle + random_range(-10, 10);
			
			
			instance_create_depth(x, y, -y, obj_ammo);
			
			instance_destroy();
		break;
#endregion

#region //tased
		case "tased":
			sv = true;
			spd = 0;
			depth = 1;
			global.imgang = image_angle;
			global.enemy_direction = direction;
			sprite_index = spr_enemy_nogun;
			image_index = 0;
			image_speed = 0;
			
			//tased
			if (enemy_tasing == true)
				{
					//no puede caminar
					enemy_taser_can_punch = false;
					
					//bg & shake eff
					obj_game_bg.flash = false;
					obj_camera_control.shake = true;
					obj_camera_control.knock_eff = true;
					obj_camera_control.knock_ratio = 1;
				}
			else
				{
					enemy_tased = true;
				}
			
			if (enemy_tased == true)
				{
					global.gun_type_to_enemy = "taser";
					state = "dead";
				}
			
			/*
			//instance_create_depth(x, y, 4, obj_enemy_dead);
			instance_create_depth(x, y, 4, obj_enemy_dead_anim);
			
			//guardar
			global.user_kills += 1;
			scr_save_us();
			
			//create gun
			randomize();
			scr_enemy_drop_gun();
			
			var ing = instance_nearest(x, y, string(gun));
			ing.image_angle = image_angle + random_range(-10, 10);
			
			
			instance_create_depth(x, y, -y, obj_ammo);
			
			instance_destroy();*/
		break;
#endregion

#region //drilled
		case "drilled":
			sv = true;
			spd = 0;
			depth = 1;
			global.imgang = image_angle;
			global.enemy_direction = direction;
			sprite_index = spr_enemy_nogun;
			image_index = 0;
			image_speed = 0;
			
			
			//tased
			if (enemy_drilling == true)
				{
					//no puede caminar
					enemy_taser_can_punch = false;
					
					//bg & shake eff
					obj_game_bg.flash = false;
					obj_camera_control.shake = true;
					obj_camera_control.knock_eff = true;
					obj_camera_control.knock_ratio = 1;
					
					/*if !(audio_is_playing(snd_drill_static_atack_old))
						{
							audio_play_sound(snd_drill_static_atack_old, 0, false);
							audio_sound_gain(snd_drill_static_atack_old, global.sfx, 0);
						}*/
					
					randomize();
					var audio_pitch = choose(0.98, 0.99);
					
					audio_sound_pitch(snd_drill_static, audio_pitch);
					
					//sangre
					repeat(2)
						{
							instance_create_depth(x, y, 2, obj_blood_dots_eff);
						}
				}
			else
				{
					enemy_drilled = true;
				}
			
			if (enemy_drilled == true)
				{
					//audio_stop_sound(snd_drill_static_atack);
					
					global.gun_type_to_enemy = "drill";
					state = "dead";
				}
		break;
#endregion

#region //default
		default:
			randomize();
			svver = true;
			state = choose("quiet", "walk", "alert");
		break;
#endregion

	}


#region //pisar noqueado

if !(global.controller == -1)
	{
		if instance_exists(obj_player) && (global.gamepad_vibration == 1) && (state == "knocked")
			{
				scr_controller_game()

				if collision_circle(x, y, 3, obj_player, false, false) && ((playerh != 0) && (playerv != 0))
					{
						gamepad_set_vibration(global.controller, 0.1, 0.1);
						obj_player.alarm[2] = 10;
					}
			}
	}

#endregion