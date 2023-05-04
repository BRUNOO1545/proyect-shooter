/// @description destroy
var limit = 64;

if (x < -limit or x > room_width + limit) && (y < -limit or y > room_height + limit)
	{
		instance_destroy();
	}