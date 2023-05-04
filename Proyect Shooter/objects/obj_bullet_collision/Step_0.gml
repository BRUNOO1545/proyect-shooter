/// @description destroy
var limit = 64;

tmr -= 1;

if (x < -limit or x > room_width + limit) && (y < -limit or y > room_height + limit) or (tmr < 0)
	{
		instance_destroy();
	}