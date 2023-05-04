var xcam, ycam;
xcam = camera_get_view_x(view_camera[0]);
ycam = camera_get_view_y(view_camera[0]);

x = xcam;
y = ycam;

//destroy
if instance_exists(obj_player)
	{
		instance_destroy();
	}

//elfecto de aparicion
if (image_alpha > 0.99)
	{
		image_alpha = 1;
	}
else
	{
		image_alpha += 0.04;
	}