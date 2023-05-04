//llamar al script
scr_controller_menu()

global.gun = gdGun_Show;

#region //gun selector
	switch (gdGun_SelectorPos)
		{
			case 0:
				//gdGun_Type = string(global.txt170);
				gdGun_Show = gdGun_Shotgun[gun];
				gdGun_ShowMax = gdGun_ShotgunMax;
			break;
			
			case 1:
				//gdGun_Type = string(global.txt171);
				gdGun_Show = gdGun_Assault[gun];
				gdGun_ShowMax = gdGun_AssaultMax;
			break;
			
			case 2:
				//gdGun_Type = string(global.txt172);
				gdGun_Show = gdGun_Subfusil[gun];
				gdGun_ShowMax = gdGun_SubfusilMax;
			break;
			
			case 3:
				//gdGun_Type = string(global.txt173);
				gdGun_Show = gdGun_Pistol[gun];
				gdGun_ShowMax = gdGun_PistolMax;
			break;
			
			case 4:
				//gdGun_Type = string(global.txt174);
				gdGun_Show = gdGun_Hand[gun];
				gdGun_ShowMax = gdGun_HandMax;
			break;
			
			case 5:
				//gdGun_Type = string(global.txt175);
				gdGun_Show = gdGun_Special[gun];
				gdGun_ShowMax = gdGun_SpecialMax;
			break;
		}
#endregion

//recorrer las armas
if (right) && (gun < gdGun_ShowMax)
	{
		gun += 1;
		
		audio_play_sound(snd_click, 0, false);
		audio_sound_gain(snd_click, global.sfx, 0);
	}

if (left) && (gun > 0)
	{
		gun -= 1;
		
		audio_play_sound(snd_click, 0, false);
		audio_sound_gain(snd_click, global.sfx, 0);
	}

if (down) && (gdGun_SelectorPos < gdGun_SelectorPosMax)
	{
		gun = 0;
		gdGun_SelectorPos += 1;
		
		audio_play_sound(snd_click, 0, false);
		audio_sound_gain(snd_click, global.sfx, 0);
	}

if (up) && (gdGun_SelectorPos > 0)
	{
		gun = 0;
		gdGun_SelectorPos -= 1;
		
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


#region //imagen
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
#endregion

//blackbg
if (blkbg_alpha > 0)
	{
		blkbg_alpha -= blkbg_alpha_speed;
	}