/// @description nombre de botones

button[0] = global.txt108;
button[1] = global.txt112;

op = global.premenu_any_button;
_bg_alp = 1;
txt_col = c_white;
limit = 1;

premenu_disabled = false;

if !(global.gicUsePreMenu == "True")
	{
		premenu_disabled = true;
	}
else
	{
		premenu_disabled = false;
	}