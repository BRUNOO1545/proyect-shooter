/// @description logica

//gamepad vibration
gamepad_set_vibration(global.controller, 0, 0);

//variables
var file = global.pause_file;
scr_controller_menu()

//subir o bajar
if (down)
	{
		if (op < limit)
			{
				op++;
				
				//sonido
				audio_play_sound(snd_click_up, 1, false);
				audio_sound_gain(snd_click_up, global.sfx, 0);
			}
		else
			{
				if (global.infinite_scroll == 1)
					{
						op = 0;
						
						//sonido
						audio_play_sound(snd_click_up, 1, false);
						audio_sound_gain(snd_click_up, global.sfx, 0);
					}
			}
	}

if (up)
	{
		if (op > 0)
			{
				op--;
				
				//sonido
				audio_play_sound(snd_click_up, 1, false);
				audio_sound_gain(snd_click_up, global.sfx, 0);
			}
		else
			{
				if (global.infinite_scroll == 1)
					{
						op = limit;
						
						//sonido
						audio_play_sound(snd_click_up, 1, false);
						audio_sound_gain(snd_click_up, global.sfx, 0);
					}
			}
	}

//switch de rooms
if (enter)
	{
		switch op
			{
				case 0:
					if file_exists(file)
						{
							//cleanup
							gc_enable(false);
							
							//cargar
							global.resume = 1;
							global.resumemouse = 1;
							global.audioresume = 1;
							global.pause_timer = global.pausetimermax;
							audio_stop_sound(aud);
							audio_resume_all();
							
							//audio
							audio_play_sound(snd_click, 1, false);
							audio_sound_gain(snd_click, global.sfx, 0);
							
							game_load(file);
						}
					else
						{
							load_error = true;
							//room_goto(pause_load_error);
							
							//audio
							audio_play_sound(snd_click_denied, 1, false);
							audio_sound_gain(snd_click_denied, global.sfx, 0);
						}
				break;
				
				case 1:
					//cleanup
					gc_enable(false);
					
					//borrar
					file_delete(file);
					
					//discord
					global.actual_enemy_killed = 0;
					
					//reiniciar
					global.restarted = false;
					global.pause_timer = global.pausetimermax;
					scr_rooms()
					audio_stop_sound(aud);
					audio_stop_sound(lvlsong);
					audio_stop_all();
					
					//audio
					audio_play_sound(snd_click, 1, false);
					audio_sound_gain(snd_click, global.sfx, 0);
					
					room_goto(rm);
				break;
				
				case 2:
					//cleanup
					gc_enable(false);
					
					//borrar
					global.restarted = false;
					file_delete(file);
					scr_rooms()
					audio_stop_sound(aud);
					audio_stop_sound(lvlsong);
					audio_stop_all();
					
					//audio
					audio_play_sound(snd_eject, 1, false);
					audio_sound_gain(snd_eject, global.sfx, 0);
					
					//discord
					obj_discord_rich.enemy_killed_counter = false;
					global.actual_enemy_killed = 0;
					
					//menu title alpha
					global.gametitleonce = false;
					
					//volver al menu
					//room_goto(menu_room);
					room_goto(leveloutro_room);
				break;
				
				case 3:
					//cleanup
					gc_enable(false);
					
					//borrar
					file_delete(file);
					
					//discord
					obj_discord_rich.enemy_killed_counter = false;
					global.actual_enemy_killed = 0;
					
					//audio
					audio_play_sound(snd_eject, 1, false);
					audio_sound_gain(snd_eject, global.sfx, 0);
					
					//salir
					game_end();
					//room_goto(gameend_room);
				break;
			}
	}

//volver al menu de config
if (esc)
	{
		if file_exists(file)
			{
				//cleanup
				gc_enable(false);
				
				//cargar
				global.resume = 1;
				global.resumemouse = 1;
				global.audioresume = 1;
				global.pause_timer = global.pausetimermax;
				audio_stop_sound(aud);
				audio_resume_all();
							
				//audio
				audio_play_sound(snd_click, 1, false);
				audio_sound_gain(snd_click, global.sfx, 0);
							
				game_load(file);
			}
		else
			{
				load_error = true;
				//room_goto(pause_load_error);
							
				//audio
				audio_play_sound(snd_click_denied, 1, false);
				audio_sound_gain(snd_click_denied, global.sfx, 0);
			}
	}

//seleccionado
if (val <= val_start)
	{
		val_state = 0;
	}

if (val >= val_limit)
	{
		val_state = 1;
	}

switch val_state
	{
		case 0:
			val += val_spd;
		break;
		
		case 1:
			val -= val_spd;
		break;
	}
/*
if (val_col > 255)
	{
		val_col = 0;
	}
else
	{
		val_col += val_spd;
	}
*/

//color
switch (op)
	{
		case 0:
			val_col = 128;
		break;
		
		case 1:
			val_col = 32;
		break;
		
		case 2:
			val_col = 0;
		break;
		
		case 3:
			val_col = 0;
		break;
	}

/*
//pause audio pitch
randomize();
pt = random_range(0.1, 1.1);
audio_sound_pitch(aud, pt);*/