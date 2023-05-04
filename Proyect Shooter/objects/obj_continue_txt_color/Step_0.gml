/// @description logica
randomize();

//variables
scr_controller_menu()
scr_rooms()

//subir o bajar
if (right)
	{
		if (lvlselect < lvllimit)
			{
				//imagen
				canrotate = true;
		
				//cambiar
				lvlselect += 1;
				global.rooms = lvlselect;
		
				//sonido
				audio_play_sound(snd, 1, false);
				audio_sound_gain(snd, global.sfx, 0);
			}
		else
			{
				//sonido
				audio_play_sound(snd_eject, 1, false);
				audio_sound_gain(snd_eject, global.sfx, 0);
			}
	}

if (left)
	{
		if (lvlselect > 0)
			{
				//imagen
				canrotate = true;
		
				//cambiar
				lvlselect -= 1;
				global.rooms = lvlselect;
		
				//sonido
				audio_play_sound(snd, 1, false);
				audio_sound_gain(snd, global.sfx, 0);
			}
		else
			{
				//sonido
				audio_play_sound(snd_eject, 1, false);
				audio_sound_gain(snd_eject, global.sfx, 0);
			}
	}

//enter
if (enter)
	{
		if (lvllock == 1)
			{
				room_goto(levelintro_room);
				
				//sonido
				audio_play_sound(snd_click, 1, false);
				audio_sound_gain(snd_click, global.sfx, 0);
			}
		else
			{
				//sonido
				audio_play_sound(snd_click_denied, 1, false);
				audio_sound_gain(snd_click_denied, global.sfx, 0);
			}
	}

//back
if (esc)
	{
		global.rooms = 0;
		room_goto(menu_room);
	}

//imagen
if (canrotate == true)
	{
		randomize();
		radio = irandom_range(-irange, irange);
		canrotate = false;
	}

if (iy <= -limit)
	{
		iys = 0;
	}

if (iy >= limit)
	{
		iys = 1;
	}

switch iys
	{
		case 0:
			iy += spd;
		break;
		
		case 1:
			iy -= spd;
		break;
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


//audio de nivel en error
if audio_is_playing(lvlsong)
	{
		audio_sound_gain(lvlsong, 0, 180);
		
		if (audio_sound_get_gain(lvlsong) <= 0)
			{
				audio_stop_sound(lvlsong);
			}
	}