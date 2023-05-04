/// @description leer datos de usuario

//checkear archivos
scr_filecheck();

//config inicial
scr_gameinitconfig();

/*
window resolution configs;

window_set_min_width(600);
window_set_min_height(400);
window_set_size(1366, 720);
surface_resize(application_surface, 1920, 1080)
display_reset(8, true);
display_get_frequency();
*/

#region //data / user data

//data
global.langdata = "lang/";
global.langfile = "en_us";
global.root = working_directory + "external/downloaded/";
global.ext = ".pyd";
global.debugmode = true;
global.debugroot = working_directory + "game_logs/";
global.lang_reference = "";
global.lang_1_name = "";
global.lang_2_name = "";

//user data
global.pause_file = "user/pause.sav";
global.config_file = "user/config.ini";
global.leveldata_file = "user/lvldata.dat";
global.userstats_file = "user/userstats.dat";

#endregion

#region //version de actualizacion

//scr_giuv();
uv = "ALPHA 0.11";
global.iversion = 4;
//global.iversion = 999;

if (global.gicIsDemo == "False")
	{
		global.userversion = uv;
	}
else
	{
		global.userversion = "GAME DEMO";
	}

#endregion

#region //version y titulo

global.gamepremenustarted = false;
global.gamereleased = true;
global.gametitleonce = false;
global.gametitle = "PROYECT SHOOTER";
//global.gametitle = "FLORIDA DECAY";
global.gamechrismas = false;

if (global.gicIsDemo == "False")
	{
		global.version = global.userversion + "  -  PUBLIC RELEASE";
	}
else
	{
		global.version = global.userversion;
	}

//navidad
if (current_month == 12) && ((current_day >= 8) && (current_day <= 25))
	{
		global.gamechrismas = true;
	}
else
	{
		global.gamechrismas = false;
	}

#endregion

#region //declarar para no crasheo

global.first_launch = 0;
global.christmas = 0;
global.controller = -1;
global.rooms = 0;
global.gundepth = 2;
global.downloaded = 0;
global.uexists = -1;
global.uversion = -1;
global.songname = "";
global.restarted = false;
global.axistimer = 0;
global.actual_enemy_killed = 0;
global.actual_points = 0;
global.actual_map = "";
global.smk_ia = 0;
global.blackbg_news_used = false;
global.blackbg_buy_used = false;
global.blackbg_update_used = false;
global.news_lang = "";
global.RainRandomValue = 0;
global.RainRandomValueLimit = 0;
global.lvl_lastplayed = 0;
global.display_mode = 0;

//armas y depth
global.timer = 0;
global.gun = -1;
global.gun_depth = 1.5;
global.build_depth = 20;

#endregion

#region //fondos

randomize();
global.bg_type = irandom_range(0, 3);
global.BG_MenuRandomSpeed = random_range(3, 8);
global.BG_MenuAlphaSpeed = global.gicMenuTransitionSpeed;

//menu select
global.UiDataRead = true;
scr_uiselect_reset();

//random menu bg
scr_bg_rain_random();

#endregion

#region //user files

//langconfig
scr_langconfig();

//data read
scr_data_read();

//leveldata
scr_create_leveldata();

//stats
scr_create_us();

//langname
scr_lang_name();

//cheats
//scr_cheat_startup();

#endregion

#region //window data apply

//fullscreen force
if (global.gicForceFullscreen == "True")
	{
		window_set_fullscreen(true);
	}
else
	{
		if (global.display_mode == 1)
			{
				window_set_fullscreen(true);
			}
		else
			{
				window_set_fullscreen(false);
			}
	}

//cursor
if !(global.gicShowCursor == "True")
	{
		window_set_cursor(cr_none);
	}

//bg
window_set_color(c_black);

#endregion

#region //boton de inicio en nueva partida o continuar

if (global.lvl_lastplayed > 0)
	{
		global.UiSelected_MainMenu = 1;
	}
else
	{
		global.UiSelected_MainMenu = 0;
	}

#endregion