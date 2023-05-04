function scr_create_smoke(){
	
	randomize();
	
	var edn, ratio, range, _xx, _yy, _yy2, _xx2;
	edn = instance_nearest(x, y, obj_player);
	ratio = smk_ratio;
	range = random_range(-5, 5);
	_xx = edn.x + lengthdir_x(ratio, edn.image_angle + range);
	_yy = edn.y + lengthdir_y(ratio, edn.image_angle + range);
	_xx2 = edn.x + lengthdir_x(ratio, edn.image_angle - 90 + range);
	_yy2 = edn.y + lengthdir_y(ratio, edn.image_angle - 90 + range);
	
	switch (tipe)
		{
			case "normal":
				global.smk_ia = spr_normal_shoot_eff;
				
				if (global.showgunpowder == 1)
					{
						repeat(10)
							{
								instance_create_depth(_xx, _yy, -15, obj_gunpowder_eff_normal);
							}
					}
					
				instance_create_depth(_xx, _yy, -15, obj_shoot_eff);
			break;
			
			case "shotgun":
				global.smk_ia = spr_shotgun_shoot_eff;
				
				if (global.showgunpowder == 1)
					{
						repeat(20)
							{
								instance_create_depth(_xx, _yy, -15, obj_gunpowder_eff_shotguns);
							}
					}
					
				instance_create_depth(_xx, _yy, -15, obj_shoot_eff);
			break;
			
			case "chainsaw":
				if (global.showgunpowder == 1)
					{
						instance_create_depth(_xx2, _yy2, -15, obj_smoke_eff);
					}
			break;
			
			case "silenced_normal":
				global.smk_ia = spr_normal_shoot_eff;
					
				instance_create_depth(_xx, _yy, -15, obj_shoot_eff);
			break;
			
			default:
				global.smk_ia = spr_pause_bg;
				instance_create_depth(_xx, _yy, -15, obj_shoot_eff);
			break;
		}

}