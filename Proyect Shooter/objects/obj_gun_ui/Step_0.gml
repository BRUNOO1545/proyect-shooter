//llamar al script
scr_controller_menu()

global.gun = gun;

//recorrer las armas
if (right)
	{
		gun += 1;
		audio_play_sound(snd_click, 0, false);
		audio_sound_gain(snd_click, global.sfx, 0);
	}

if (left)
	{
		gun -= 1;
		audio_play_sound(snd_click, 0, false);
		audio_sound_gain(snd_click, global.sfx, 0);
	}

//limites
if (gun > maxgun)
	{
		gun = 0;
	}

if (gun < 0)
	{
		gun = maxgun;
	}

//esc
if (esc)
	{
		room_goto(menu_room);
	}


//imagen
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