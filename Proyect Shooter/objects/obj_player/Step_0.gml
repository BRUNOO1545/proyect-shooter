//depth
depth = 1;

image_xscale = imgxcale;
image_yscale = imgxcale;

//windows focus
scr_windows_focus()

//llamar al cript de movimiento
scr_controller_game()

//llamar al script de disparos
scr_guns()

//llamar al script de recarga
scr_gunbar()

//movimientos
x = _obj.x;
y = _obj.y;
image_angle = _obj.image_angle;


//test
if (player_killed == true)
	{
		//para que el arma sepa que estas muerto
		player_dead = true;
		
		//script de tirar
		scr_drop_gun();
		
		global.user_deaths += 1;
		scr_save_us();
		
		//crear muerto
		global.player_ang = image_angle;
		instance_create_depth(x, y, 1, obj_player_dead);
		instance_destroy();
	}

//armas
if (global.guntaked == false)
	{
		if (playerspace)
			{
				//script de armas
				scr_take_gun();
				scr_gunbar();
				scr_is_hand_gun();
				
				//ultima arma
				global.last_gun_used = global.gun;
				global.last_gun_used_name = name;
				global.last_gun_used_hand_gun = is_hand_gun;
			}
	}
else
	{
		if (playerspace)
			{
				//script de tirar
				scr_is_hand_gun();
				
				randomize();
				
				if (is_hand_gun == true)
					{
						global.gun_spd = random_range(30, 45);
					}
				else
					{
						global.gun_spd = random_range(15, 30);
					}
				
				/*
				//ultima arma
				global.last_gun_used = global.gun;
				*/
				
				instance_create_depth(x, y, 1, obj_gun_col);
				
				scr_unreload();
				scr_drop_gun();
			}
	}

//recarga
if (playerreload)
	{
		if (reload == false) && (bullet <= (ammolimit - 1)) && (maxammo >= 1) && (global.guntaked == true)
			{
				canshoot = false;
				reload = true;
				scr_reload_sound();
				alarm[0] = reloadtimermax;
				alarm[1] = reloadtimermax/2;
			}
	}

//si no tiene arma cambiar de imagen
switch (global.gun)
	{
		case -1:
			sprite_index = spr_player_nogun;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
			player_using_shield = false;
			
			if ((obj_player_col.vs > 0) or (obj_player_col.vs < 0)) or ((obj_player_col.hs > 0) or (obj_player_col.hs < 0))
				{
					image_speed = 0.5;
				}
			else
				{
					image_index = 0;
					image_speed = 0;
				}
		break;

		//shotgun
		case 2:
			sprite_index = spr_player_shotgun;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//knife
		case 14:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//broken bottle
		case 15:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//machete
		case 17:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//fire axe
		case 21:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//lead pipe
		case 22:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//cross wrench
		case 23:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//baseball bat
		case 26:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//hammer
		case 27:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//katana
		case 28:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
		break;
		
		//Balistic Shield
		case 32:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
			player_using_shield = true;
		break;
		
		//Anti-Riot Shield
		case 33:
			sprite_index = spr_player_knife_attack;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
			player_using_shield = true;
		break;
		
		default:
			sprite_index = spr_player_test;
			image_xscale = imgxcale;
			image_yscale = imgxcale;
			player_using_shield = false;
		break;
	}

//shield test
if (player_using_shield == true)
	{
		/*
		if !(instance_exists(obj_player_shield))
			{
				instance_create_depth(x, y, -y, obj_player_shield);
			}*/
		
		if (player_shield_col_deleted == false) && !(instance_exists(obj_player_shield_kill))
			{
				instance_create_depth(x, y, -y, obj_player_shield_kill);
			}
	}
else
	{
		/*
		if instance_exists(obj_player_shield)
			{
				instance_destroy(obj_player_shield);
			}*/
		
		if instance_exists(obj_player_shield_kill)
			{
				player_shield_col_deleted = false;
				instance_destroy(obj_player_shield_kill);
			}
	}