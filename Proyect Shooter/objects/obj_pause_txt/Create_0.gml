/// @description nombre de botones
gc_enable(true);

op = 0;
menu_alpha = 0;
txt_col = c_white;
txt_col2 = c_black;
txt_al = 4;
limit = 3;

dest_alp = 1;

load_error = false;

//botones old, eff 0
col_outline = false;

//style
pause_style = global.pause_style;

switch pause_style
	{
		case 0:
			button[0] = global.txt132;
			button[1] = global.txt133;
			button[2] = global.txt135;
			button[3] = global.txt136;
		break;
		
		case 1:
			button[0] = global.txt2;
			button[1] = global.txt19;
			button[2] = global.txt20;
			button[3] = global.txt4;
		break;
	}

//fondo
//spr = sprite_add("user/pause.png", 0, false, false, 0, 0);
//draw_sprite(spr, 0, 0, 0);
//draw_sprite_ext(spr, 0, 0, 0, 1, 1, 0, c_gray, 1);

//audio
aud = snd_pause;
//pt = 0;

if !(audio_is_playing(aud))
	{
		audio_play_sound(aud, 1, true);
		audio_sound_gain(aud, global.sfx, 0);
	}
else
	{
		audio_sound_gain(aud, global.sfx, 0);
	}

randomize();
color_act = global.pause_color;

//val_col = random_range(0, 255);
val_col = 255;
val_start = 32;

if (color_act == 1)
	{
		val_limit = 128;
	}
else
	{
		val_limit = 96;
	}

val_spd = 0.7;
val = val_start;
val_state = choose(0, 1);

//audio pause
audio_play_sound(snd_pause_start, 1, false);
audio_sound_gain(snd_pause_start, global.sfx, 0);