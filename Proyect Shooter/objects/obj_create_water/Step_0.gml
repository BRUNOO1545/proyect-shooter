//crear agua
var ammount;

if (global.limitrain == 0)
	{
		ammount = 3;
	}
else
	{
		ammount = 1;
	}


repeat(ammount)
	{
		randomize();

		var mapx, mapy, rg, xr, yr;
		mapx = room_width;
		mapy = room_height;
		rg = 16;
		xr = random_range(-rg, mapx + rg);
		yr = random_range(-rg, mapy + rg);

		//instance_create_depth(xr, yr, 30, obj_water);
	}