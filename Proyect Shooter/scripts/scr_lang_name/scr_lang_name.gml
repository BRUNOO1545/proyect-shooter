function scr_lang_name(){
	
	var section = global.lang_reference;
	
	ini_open("lang/.langname")
	
	if ini_section_exists(section)
		{
			global.lang_1_name = ini_read_string(string(section), "lang_1", "")
			global.lang_2_name = ini_read_string(string(section), "lang_2", "")
		}
	else
		{
			global.lang_1_name = "FILE ERROR - LANG_1 = ENGLISH";
			global.lang_2_name = "FILE ERROR - LANG_2 = SPANISH_LAT";
		}
	
	ini_close();

}