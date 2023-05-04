/// @description variables
subimg = 0;
controller_can_vibrate = false;
controller_vibrate_act = false;
_bg_alp = 1;

//checkeo de activacion de vibracion, en tal caso bloquear funcion
controller_vibration_supported = false;

if (global.gamepad_vibration == true)
	{
		controller_vibration_supported = true;
	}
else
	{
		controller_vibration_supported = false;
	}