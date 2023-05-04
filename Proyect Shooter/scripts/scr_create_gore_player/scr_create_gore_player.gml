function scr_create_gore_player(){
	
	var pdn = instance_nearest(x, y, obj_player_dead);
	
	switch (pdn.image_index)
		{
			case 0:
				instance_create_depth(pdn.x, pdn.y, 5, obj_blood);
			break;
			
			case 1:
				var _xx = pdn.x + lengthdir_x(45, pdn.ia + 180);
				var _yy = pdn.y + lengthdir_y(45, pdn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case 2:
				instance_create_depth(pdn.x, pdn.y, 5, obj_blood);
			break;
			
			default:
				instance_create_depth(pdn.x, pdn.y, 5, obj_blood);
			break;
		}

}