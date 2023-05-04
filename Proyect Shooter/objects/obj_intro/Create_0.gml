/// @description variables

//intro data
scale = false;
//introtimer = 420;
introtimer = 300;
introtimerdiv = introtimer/2;
esc_alpha = 0;
image_alpha = 0;
image_speed = 0;
x = room_width/2;
y = 300;
esc_pushed = false;

//rgb
randomize();
hue = random_range(0, 360);
col = 0;
col2 = 0;
mode = 1;
x_spd = 64;
x_lmt = 10;
/*
x_min = -x_lmt;
x_max = -x_lmt;
x_min2 = room_width + x_lmt;
x_max2 = room_width + x_lmt;
aud = snd_pause;
//pt = 0;

//fondo
instance_create_depth(0, 0, 1, obj_bg_intro);