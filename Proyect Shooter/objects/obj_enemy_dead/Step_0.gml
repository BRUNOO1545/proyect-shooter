depth = 3;
image_speed = 0;
image_angle = ia;
image_xscale = global.enemy_xcale;
image_yscale = global.enemy_xcale;

if (once == true)
	{
		//image index
		randomize();
		image_index = irandom_range(0, 2);
		
		//score
		obj_gunbar.player_score += 150;
		
		//gore
		//scr_create_gore();
		
		//data
		once = false;
	}

//pisar cadaver
if !(global.controller == -1)
	{
		if instance_exists(obj_player) && (global.gamepad_vibration == 1)
			{
				scr_controller_game()

				if collision_circle(x, y, 3, obj_player, false, false) && ((playerh != 0) && (playerv != 0))
					{
						gamepad_set_vibration(global.controller, 0.1, 0.1);
						obj_player.alarm[2] = 10;
					}
			}
	}

//gore move
if (speed <= 0)
	{
		speed = 0;

		//sangle
		if (once_blood == true)
			{
				//data
				once_blood = false;
		
				//gore
				scr_create_gore();
			}
	}
else
	{
		speed -= 0.5;
		instance_create_depth(x, y, 4, obj_blood_tipes_2);
	}