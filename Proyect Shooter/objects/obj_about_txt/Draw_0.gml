/// @description dibujar texto

///fa right
draw_set_font(fnt_1);

if (sc == false)
	{
		//texto
		var xcor1 = room_width/2 - 16;
		var xcor2 = room_width/2 + 16;
		
		//cargos
		draw_set_color(c_white);
		draw_set_halign(fa_right);

		draw_text(xcor1, cy, string(global.txt45));
		draw_text(xcor1, cy + 32, string(global.txt46));
		draw_text(xcor1, cy + 64, string(global.txt47));
		draw_text(xcor1, cy + 96, string(global.txt48));
		draw_text(xcor1, cy + 128, string(global.txt49));
		draw_text(xcor1, cy + 160, string(global.txt50));
		draw_text(xcor1, cy + 224, string(global.txt51));
		draw_text(xcor1, cy + 256, string(global.txt52));
		draw_text(xcor1, cy + 288, string(global.txt53));
		draw_text(xcor1, cy + 352, string(global.txt67));


		//nombres
		draw_set_color(c_gray);
		draw_set_halign(fa_left);

		draw_text(xcor2, cy, "BRUNOO1545");
		draw_text(xcor2, cy + 32, "GameMaker Studio 2");
		draw_text(xcor2, cy + 64, "JUAN DEL VALLE");
		draw_text(xcor2, cy + 96, "BRUNOO1545");
		draw_text(xcor2, cy + 128, "BRUNOO1545");
		draw_text(xcor2, cy + 160, "ANAEL FLECHA, EMILIO RODRIGUEZ,\nNICOLAS SUAREZ, THOMAS BORGHESE");
		draw_text(xcor2, cy + 224, "ANAEL FLECHA, BRUNOO1545");
		draw_text(xcor2, cy + 256, "execute_shell_simple, NekoPresence");
		draw_text(xcor2, cy + 288, "Upheaval TT, Take It Easy, Unispace,\nVCD OSD Mono, Potencial Neon");
		draw_text(xcor2, cy + 352, "ANAEL FLECHA, EMILIO RODRIGUEZ,\nNICOLAS SUAREZ");
		
		//destruir imagen
		if instance_exists(obj_brunoo1545)
			{
				instance_destroy(obj_brunoo1545);
			}
		
		if instance_exists(obj_bg_gracias)
			{
				instance_destroy(obj_bg_gracias);
			}
		
		//title
		draw_set_font(fnt_3);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(room_width/2, 10, string(global.txt44));
	}
else
	{
		//gracias
		var thanks, txtlimit;
		thanks = "GRACIAS A TODOS LOS QUE ME AYUDARON EN ESTE CAMINO A DESARROLLAR UN JUEGO,\nEN ESPECIAL A LOS QUE ME DIERON APOYO CUANDO PERDÍ TODOS LOS DATOS SOBRE\nEL PROYECTO, DANDOME FUERZAS PARA SEGUIR Y EMPEZAR TODO DESDE CERO,\nMUCHAS GRACIAS.\n\nBRUNOO1545";
		txtlimit = 564;

		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_rectangle(room_width/2 - string(txtlimit), 420, room_width/2 + string(txtlimit), 440 + string_height(thanks), true);
		draw_rectangle_color(room_width/2 - string(txtlimit), 420, room_width/2 + string(txtlimit), 440 + string_height(thanks), c_black, c_black, c_black, c_black, false);
		draw_text(room_width/2, cy + 330, string(thanks));
		
		//imagen
		if !(instance_exists(obj_brunoo1545))
			{
				instance_create_depth(room_width/2, 260, -y, obj_brunoo1545);
			}
		
		if !(instance_exists(obj_bg_gracias))
			{
				instance_create_depth(0, 0, 99, obj_bg_gracias);
			}
		
		//title
		draw_set_font(fnt_3);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(room_width/2, 32, "GRACIAS");
	}

//boton esc y texto
scr_controller_img()

if (global.helpers == 1)
	{
		draw_set_font(fnt_1);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		
		//esc
		draw_sprite_ext(ui, 0, 15, 635, 1, 1, 0, c_white, 1);
		draw_text(55, 637, string(global.txt5));
	}


//fondo negro
if (bk_bg_alpha > 0)
	{
		bk_bg_alpha -= global.BG_MenuAlphaSpeed;
	}

draw_sprite_stretched_ext(spr_bg_pause2, 0, 0, 0, room_width, room_height, c_white, bk_bg_alpha);