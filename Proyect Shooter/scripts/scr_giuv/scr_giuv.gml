function scr_giuv(){

	var gic_file = "giuv.gic";
	
	ini_open(gic_file)
	global.iversion = ini_read_real("giuv", "iv", 0)
	ini_close();

}