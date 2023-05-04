/// @description nombre de botones
randomize();

//data
global.rooms = 0;
lvlselect = 0;
lvllimit = 2;
lvlname = "";
lvldesc = "";
canrotate = false;
irange = 20;
radio = irandom_range(-irange, irange);
menu_alpha = 0;

//imagen
hue_spd = 0.4;
_buffer = 64;
hue = random_range(0, 255);
hue2 = hue + _buffer;
hue3 = hue - _buffer;
hue4 = hue - _buffer*2;
color = 0;
color2 = 0;
color3 = 0;
color4 = 0;
limit = 8;
iy = limit;
iys = choose(0, 1);
spd = 0.3;

//fondo
yu = room_height/2 - 20;
yd = yu - 10;
yspd = 50;

//audio
snd = snd_photo_pass;