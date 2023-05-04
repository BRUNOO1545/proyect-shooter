/// @description link
cancel = false;
closetimer = 2;
result = "";
file = "";
timer = 600;
candownload = true;
fname = global.root + "update" + global.ext;
scr_download_servers();
link = http_get(d_update);
global.update = false;
once = true;

_bg_alp = 1;