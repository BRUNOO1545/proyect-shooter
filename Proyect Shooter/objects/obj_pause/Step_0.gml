//pausar juego si se desconecta
scr_controller_disconected()

//llamar al script
scr_controller_game()

if ((gp_disconected == true) or (playeresc)) && (global.pause_timer < 0) && (instance_exists(obj_player))
	{
		//guardar screenshot
		var file = "user/pause.png";
		screen_save(file);
		
		audio_pause_all();
		
		game_save(global.pause_file);
		
		//audio
		audio_play_sound(snd_click, 1, false);
		audio_sound_gain(snd_click, global.sfx, 0);
		
		room_goto(pause_room);
	}
else
	{
		global.pause_timer -= 1;
	}

//respawn
if !instance_exists(obj_player)
	{
		//crear efecto de muerte
		var xcam, ycam;
		xcam = camera_get_view_x(view_camera[0]);
		ycam = camera_get_view_y(view_camera[0]);

		if !(instance_exists(obj_death_bg))
			{
				instance_create_depth(xcam, ycam, -y, obj_death_bg);
			}
		
		/*
		//reiniciar
		if (playerrestart)
			{
				var xspawn = room_width/2;
				var yspawn = room_height/2;
		
				instance_create_depth(xspawn, yspawn, -y, obj_player);
			}
		
		//borrar ayuda
		if instance_exists(obj_loadout_help)
			{
				instance_destroy(obj_loadout_help);
			}
		*/
		
		if (playerrestart)
			{
				room_restart();
				
				//actualizar estado de discord a 0 muertes
				if (global.discord_rich == 1)
					{
						obj_discord_rich.reset_stats = true;
					}
			}
	}
else
	{
		//poner balas
		if (testammo)
			{
				instance_create_depth(obj_mouse.x, obj_mouse.y, -y, obj_ammo);
			}
		
		//crear ayuda
		if !instance_exists(obj_loadout_help)
			{
				instance_create_depth(0, 0, -y, obj_loadout_help);
			}
	}