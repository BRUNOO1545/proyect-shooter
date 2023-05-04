//recoil
bullet_type = "bt_cal357";
scr_recoil();

//point
randomize();
direction = point_direction(x, y, obj_mouse.x, obj_mouse.y) + random_range(-dispersion, dispersion);
image_angle = direction;
speed = blspd;

//bullet collision
instance_create_depth(x, y, -y, obj_bullet_collision);
var bc = instance_nearest(x, y, obj_bullet_collision);
bc.speed = speed;