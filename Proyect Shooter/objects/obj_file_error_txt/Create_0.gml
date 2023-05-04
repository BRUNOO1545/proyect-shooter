/// @description Debug
once = true;
_bg_alp = 1;

if !(instance_exists(obj_debug))
	{
		instance_create_depth(x, y, -y, obj_debug);
	}