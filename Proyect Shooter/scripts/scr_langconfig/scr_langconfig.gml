function scr_langconfig(){
	
	ini_open("lang/.langconfig")
	
	global.lang_default = ini_read_real("langconfig", "lang_default", 1)
	global.lang_1 = ini_read_string("langconfig", "lang_1", "")
	global.lang_2 = ini_read_string("langconfig", "lang_2", "")
	
	ini_close();

}