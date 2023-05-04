/// @description  dibujar version e info
if (room == menu_room)
	{
		cs = false;
	}

if (room == config_room)
	{
		cs = true;
	}

if !(instance_exists(obj_save_logo)) && (cs == true)
	{
		ics = true;
	}
else
	{
		ics = false;
	}

//show_debug_overlay(true);

//version
if (ics == true) && (global.gicShowVersion == "True")
	{
		draw_set_font(fnt_5);
		draw_set_color(c_white);
		draw_set_halign(fa_right);
		draw_text(room_width - 32, room_height - 64, "iv: " + string(global.iversion) + "\n v: " + string(global.userversion));
	}

//fps
if (global.showfps == true) && !(room == pause_room)
	{
		draw_set_font(fnt_5);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text(32, 32, "FPS: " + string(fps_real) + "\nROOM_SPEED: " + string(fps));
	}

//server
if (global.showserver == true) && !(room == pause_room)
	{
		draw_set_font(fnt_5);
		draw_set_color(c_white);
		draw_set_halign(fa_right);
		draw_text(room_width - 32, 32, "UPDATE CHECK: " + string(global.uexists) + "\nVERSION (UPDATE): " + string(global.uversion) + "\nVERSION (LOCAL): " + string(global.iversion));
	}