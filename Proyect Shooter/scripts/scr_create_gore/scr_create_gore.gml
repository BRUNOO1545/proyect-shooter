function scr_create_gore(){
	
	var edn = instance_nearest(x, y, obj_enemy_dead);
	
	switch (edn.image_index)
		{
			case 0:
				instance_create_depth(edn.x, edn.y, 5, obj_blood);
			break;
			
			case 1:
				var _xx = edn.x + lengthdir_x(45, edn.ia + 180);
				var _yy = edn.y + lengthdir_y(45, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case 2:
				instance_create_depth(edn.x, edn.y, 5, obj_blood);
			break;
			
			default:
				instance_create_depth(edn.x, edn.y, 5, obj_blood);
			break;
		}

}