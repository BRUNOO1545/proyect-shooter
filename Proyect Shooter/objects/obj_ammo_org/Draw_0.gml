//draw_self();
draw_sprite_ext(spr_ammo, image_index, x, y - iy, image_xscale, image_yscale, 0, c_white, 1);

if (global.showcollisions == true)
	{
		draw_rectangle(x - ver, y - ver - iy, x + ver, y + ver - iy, true);
	}

/*
if (rtaked == true)
	{
		draw_set_font(fnt_6);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		
		//subir
		var i;
		i += 1;
		
		//texto
		switch image_index
			{
				//cal 762
				case 0:
					draw_text(x, y - 10 - i, "+ cal. 762 x" + string(r762));
				break;
				
				//cal 9
				case 1:
					draw_text(x, y - 10 - i, "+ cal. 9 x" + string(r9));
				break;
				
				//cal 556
				case 2:
					draw_text(x, y - 10 - i, "+ cal. 556 x" + string(r556));
				break;
				
				//cal 20
				case 3:
					draw_text(x, y - 10 - i, "+ cal. 20 x" + string(r20));
				break;
				
				//cal 12
				case 4:
					draw_text(x, y - 10 - i, "+ cal. 12 x" + string(r12));
				break;
			}
	}*/