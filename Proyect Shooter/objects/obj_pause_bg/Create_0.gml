ia = 0;
limit = 0.5;
file = "user/pause.png";

if file_exists(file)
	{
		spr = sprite_add(file, 0, false, false, 0, 0);
	}
else
	{
		spr = spr_missing;
	}

color = c_white;