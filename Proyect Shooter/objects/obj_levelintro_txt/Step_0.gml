/// @description logica

//variables
scr_controller_menu()
scr_rooms()

//discord
global.actual_map = string(lvlname);

//next
if (esc) && (esc_touched == false) && !(timer <= timerdiv)
	{
		esc_touched = true;
		timer = timerl/timerdiv;
	}

if (timer < 0)
	{
		//parar audio
		audio_stop_sound(snd_menu);
		
		if (lvllock == 1)
			{
				room_goto(rm);
				audio_sound_gain(lvlsong, global.music, 0);
			}
		else
			{
				//volver si esta bloqueado
				audio_stop_sound(lvlsong);
				audio_play_sound(snd_menu, 1, true);
				room_goto(continue_room);
			}
	}
else
	{
		timer -= 1;
		
		if (once == true)
			{
				if !audio_is_playing(lvlsong)
					{
						audio_play_sound(lvlsong, 1, true);
					}
				
				audio_sound_gain(lvlsong, 0, 0);
				audio_sound_gain(lvlsong, global.music, timerl);
				
				once = false;
			}
	}


//fondo
if (yu <= 100)
	{
		yu = 100;
	}
else
	{
		yu -= yspd;
	}

if (yd >= room_height - 150)
	{
		yd = room_height - 150;
	}
else
	{
		yd += yspd;
	}

//fondo color
if (timer < timerl)
	{
		if (x_lmt < room_width)
			{
				x_lmt += x_spd;
			}
		else
			{
				x_lmt = room_width;
			}
	}

if (timer < 30)
	{
		if (x_str < room_width)
			{
				x_str += x_spd;
			}
		else
			{
				x_str = room_width;
			}
	}