/// @description rotar y logica

image_speed = 0;
x = room_width/2;
y = room_height/2;
image_xscale = 0.6;
image_yscale = 0.6;

//rotar
if (canrotate == true)
	{
		image_angle -= 5;
	}
else
	{
		image_angle = 0;
	}

//destruir y crear
if (global.downloaded == 2)
	{
		switch room
			{
				case news_room:
					instance_create_depth(x,y, -y, obj_news_txt);
					instance_destroy();
				break;
				
				case update_room:
					instance_create_depth(x,y, -y, obj_update_txt);
					instance_destroy();
				break;
				
				case buy_room:
					instance_create_depth(x,y, -y, obj_buy_txt);
					instance_destroy();
				break;
			}
	}