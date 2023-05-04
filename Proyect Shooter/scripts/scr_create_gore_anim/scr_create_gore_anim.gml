function scr_create_gore_anim(){
	
	var edn = instance_nearest(x, y, obj_enemy_dead_anim);
	
	switch (edn.sprite_index)
		{
			case spr_ed_anim_1:
				var _xx = edn.x + lengthdir_x(45, edn.ia + 180);
				var _yy = edn.y + lengthdir_y(45, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_ed_anim_2:
				var _xx = edn.x + lengthdir_x(10, edn.ia + 270);
				var _yy = edn.y + lengthdir_y(10, edn.ia + 270);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_ed_anim_3:
				var _xx = edn.x + lengthdir_x(20, edn.ia + 180);
				var _yy = edn.y + lengthdir_y(20, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_ed_anim_4:
				var _xx = edn.x + lengthdir_x(5, edn.ia + 90);
				var _yy = edn.y + lengthdir_y(5, edn.ia + 90);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_ed_anim_5:
				var _xx = edn.x + lengthdir_x(3, edn.ia + 180);
				var _yy = edn.y + lengthdir_y(3, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_ed_anim_6:
				var _xx = edn.x + lengthdir_x(45, edn.ia + 180);
				var _yy = edn.y + lengthdir_y(45, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_ed_anim_7:
				var _xx = edn.x + lengthdir_x(45, edn.ia + 180);
				var _yy = edn.y + lengthdir_y(45, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_ed_anim_8:
				var _xx = edn.x + lengthdir_x(45, edn.ia + 160);
				var _yy = edn.y + lengthdir_y(45, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_blood);
			break;
			
			case spr_et_anim_1:
				var _xx = edn.x + lengthdir_x(45, edn.ia + 180);
				var _yy = edn.y + lengthdir_y(45, edn.ia + 180);
				instance_create_depth(_xx, _yy, 5, obj_epilepsy);
			break;
			
			default:
				instance_create_depth(edn.x, edn.y, 5, obj_blood);
			break;
		}

}