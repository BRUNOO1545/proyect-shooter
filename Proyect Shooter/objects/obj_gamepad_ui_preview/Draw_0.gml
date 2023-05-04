/// @description dibujar teclas

if (is_xbox_bt == true)
	{
		#region //xbox

		//pov
		draw_sprite_ext(xbox_spr, xbox_pov_count, _x + 64, _y + 96, scale*1.5, scale*1.5, 0, c_white, _alpha);

		//left stick
		draw_sprite_ext(xbox_spr, xbox_ls_count, _x, _y + 16, scale*1.5, scale*1.5, 0, c_white, _alpha);

		//right stick
		draw_sprite_ext(xbox_spr, xbox_rs_count, _x + 144, _y + 96, scale*1.5, scale*1.5, 0, c_white, _alpha);

		//buttons

		//A
		draw_sprite_ext(xbox_spr, 1, _x + 220, _y + 44, scale, scale, 0, c_white, _alpha);

		//B
		draw_sprite_ext(xbox_spr, 0, _x + 242, _y + 22, scale, scale, 0, c_white, _alpha);

		//X
		draw_sprite_ext(xbox_spr, 2, _x + 198, _y + 22, scale, scale, 0, c_white, _alpha);

		//Y
		draw_sprite_ext(xbox_spr, 13, _x + 220, _y, scale, scale, 0, c_white, _alpha);

		//LB
		draw_sprite_ext(xbox_spr, 17, _x + 8, _y - 32, scale, scale, 0, c_white, _alpha);

		//RB
		draw_sprite_ext(xbox_spr, 18, _x + 220, _y - 32, scale, scale, 0, c_white, _alpha);

		//LT
		draw_sprite_ext(xbox_spr, 23, _x + 8, _y - 54, scale, scale, 0, c_white, _alpha);

		//RT
		draw_sprite_ext(xbox_spr, 14, _x + 220, _y - 54, scale, scale, 0, c_white, _alpha);

		//Pause
		draw_sprite_ext(xbox_spr, 28, _x + 144, _y + 32, scale, scale, 0, c_white, _alpha);

		/*//Home
		draw_sprite_ext(xbox_spr, 28, _x + 80, _y + 32, scale, scale, 0, c_white, _alpha);*/

		#endregion
	}
else
	{
		#region //ps
		
		//pov
		draw_sprite_ext(ps_spr, ps_pov_count, _x, _y + 16, scale*1.5, scale*1.5, 0, c_white, _alpha);

		//left stick
		draw_sprite_ext(ps_spr, ps_ls_count, _x + 64, _y + 96, scale*1.5, scale*1.5, 0, c_white, _alpha);

		//right stick
		draw_sprite_ext(ps_spr, ps_rs_count, _x + 144, _y + 96, scale*1.5, scale*1.5, 0, c_white, _alpha);

		//buttons

		//cross
		draw_sprite_ext(ps_spr, 1, _x + 220, _y + 44, scale, scale, 0, c_white, _alpha);

		//circle
		draw_sprite_ext(ps_spr, 0, _x + 242, _y + 22, scale, scale, 0, c_white, _alpha);

		//square
		draw_sprite_ext(ps_spr, 2, _x + 198, _y + 22, scale, scale, 0, c_white, _alpha);

		//triangle
		draw_sprite_ext(ps_spr, 13, _x + 220, _y, scale, scale, 0, c_white, _alpha);

		//L1
		draw_sprite_ext(ps_spr, 17, _x + 8, _y - 32, scale, scale, 0, c_white, _alpha);

		//R1
		draw_sprite_ext(ps_spr, 18, _x + 220, _y - 32, scale, scale, 0, c_white, _alpha);

		//L2
		draw_sprite_ext(ps_spr, 23, _x + 8, _y - 54, scale, scale, 0, c_white, _alpha);

		//R2
		draw_sprite_ext(ps_spr, 14, _x + 220, _y - 54, scale, scale, 0, c_white, _alpha);

		//Options
		draw_sprite_ext(ps_spr, 28, _x + 170, _y, scale, scale, 0, c_white, _alpha);

		/*//Share
		draw_sprite_ext(ps_spr, 28, _x + 80, _y + 32, scale, scale, 0, c_white, _alpha);*/

		#endregion
	}

//rectangulo
if (_alpha == 1)
	{
		draw_rectangle(-5, _y - 96, 320, _y + 160, true);
		
		//texto
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(160, _y - 90, string(global.txt143));
	}