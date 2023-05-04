/// @description link

//no chrasheo
global.buy_downloaded = false;
global.buy_link = "";
global.buy_img_limit = 0;
global.buy_img_0 = spr_bg_pause;
global.buy_img_1 = spr_bg_pause;
global.buy_img_2 = spr_bg_pause;
global.buy_img_3 = spr_bg_pause;
global.buy_img_4 = spr_bg_pause;

//download
timer = 600;
result = "";
file = "";
fname = global.root + "buy" + global.ext;
scr_download_servers();
link = http_get(d_buy);
once_load = true;
_bg_alp = 1;