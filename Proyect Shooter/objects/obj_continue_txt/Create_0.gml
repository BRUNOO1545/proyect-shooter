/// @description nombre de botones
randomize();

//data
var uselastlevel = 1;

if (uselastlevel == 1)
	{
		global.rooms = global.lvl_lastplayed;
		lvlselect = global.lvl_lastplayed;
	}
else
	{
		global.rooms = 0;
		lvlselect = 0;
	}

lvllimit = 2;
lvlname = "";
lvldesc = "";
canrotate = false;
irange = 20;
radio = irandom_range(-irange, irange);
menu_alpha = 0;

//imagen
hue = random_range(0, 255);
color = 0;
limit = 8;
iy = limit;
iys = choose(0, 1);
spd = 0.3;

//fondo
yu = room_height/2 - 20;
yd = yu - 10;
yspd = 50;

//audio
snd = snd_photo_pass;

//randomize cleared
randomize();
r_img_max = 4;
r_img = irandom_range(0, r_img_max);
lvl_clr = 0;
can_randomize_cleared = true;


#region //reiniciar en caso de exceso

	//si es mayor
	if (global.lvl_lastplayed > lvllimit)
		{
			global.lvl_lastplayed = lvllimit;
			scr_lastlevel();
		
			room_restart();
		}

	//si es menor
	if (global.lvl_lastplayed < 0)
		{
			global.lvl_lastplayed = 0;
			scr_lastlevel();
		
			room_restart();
		}

#endregion