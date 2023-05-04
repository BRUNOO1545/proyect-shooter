/// @description x, y

x = _obj.x;
y = _obj.y;
image_xscale = xcale;
image_yscale = xcale;

var obj_move = obj_player_col;

if (obj_move.vs > 0) or (obj_move.vs < 0)
	{
		image_speed = _spd;
	}
else
	{
		if (obj_move.hs > 0) or (obj_move.hs < 0)
			{
				image_speed = _spd;
			}
		else
			{
				image_speed = 0;
			}
	}

image_angle = obj_move.angl;