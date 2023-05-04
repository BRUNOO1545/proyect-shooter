/// @description link
timer = 600;
result = "";
file = "";
fname = global.root + "news" + global.ext;
scr_download_servers();
link = http_get(d_news);
once = true;
_bg_alp = 1;