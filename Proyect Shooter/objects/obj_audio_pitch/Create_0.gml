/// @description variables
global.audioresume = 0;

if (global.restarted == false)
	{
		pitch = 1;
		global.restarted = true;
	}
else
	{
		pitch = 0;
	}

pitchspd = 0.05;
start = true;
once = true;