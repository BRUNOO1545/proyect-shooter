/// @description room loaded

//debug
if instance_exists(obj_debug)
	{
		obj_debug.debug = true;
		obj_debug.info = "Room loaded (" + string(room_get_name(room)) + ").";
	}