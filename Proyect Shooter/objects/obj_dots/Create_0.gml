randomize();

x = random_range(0, room_width);
y = random_range(10, room_height - 10);
insdes = random_range(1, 10);
scl = random_range(0.1, 0.3);

image_speed = 0;
image_index = random_range(0, 3);
image_blend = choose(c_white, c_gray, c_silver);
image_xscale = scl;
image_yscale = scl;