function scr_filecheck(){
	
	var fcFile, fcShowErrorMessage, fcIncludeDLL, fcFileLoad1, fcFileLoad2, fcFileLoad3, fcFileLoad4, fcFileLoadDLL1, fcFileLoadDLL2;
	fcFile = "filecheck.gic";
	
	global.fcMissingFile = "";
	
	#region //load data
	
	ini_open(fcFile)
	
	fcShowErrorMessage = ini_read_real("filecheck", "fcShowErrorMessage", 1)
	fcIncludeDLL = ini_read_real("filecheck", "fcIncludeDLL", 0)
	fcFileLoad1 = ini_read_string("filecheck", "fcFileLoad1", "")
	fcFileLoad2 = ini_read_string("filecheck", "fcFileLoad2", "")
	fcFileLoad3 = ini_read_string("filecheck", "fcFileLoad3", "")
	fcFileLoad4 = ini_read_string("filecheck", "fcFileLoad4", "")
	
	fcFileLoadDLL1 = ini_read_string("filecheck", "fcFileLoadDLL1", "")
	fcFileLoadDLL2 = ini_read_string("filecheck", "fcFileLoadDLL2", "")
	
	ini_close();
	
	#endregion
	
	#region //check files
	
	//count files
	var maxfile, files;
	maxfile = 4;
	files = [fcFile, fcFileLoad1, fcFileLoad2, fcFileLoad3, fcFileLoad4];
	
	for (var actualfile = 0; actualfile <= maxfile; actualfile++)
		{
			if !file_exists(string(files[actualfile]))
				{
					if (fcShowErrorMessage == 1)
						{
							global.fcMissingFile = files[actualfile];
							
							room_goto(file_error);
						}
				}
		}
	
	//count DLL files
	if (fcIncludeDLL == 1)
		{
			var dll_maxfile, dll_files;
			dll_maxfile = 1;
			dll_files = [fcFileLoadDLL1, fcFileLoadDLL2];
			
			for (var dll_actualfile = 0; dll_actualfile <= dll_maxfile; dll_actualfile++)
				{
					if !file_exists(string(dll_files[dll_actualfile]))
						{
							if (fcShowErrorMessage == 1)
								{
									global.fcMissingFile = dll_files[dll_actualfile];
									
									room_goto(file_error);
								}
						}
				}
		}
	
	#endregion

}