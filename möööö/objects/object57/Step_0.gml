image_angle = point_direction(maa.x, maa.y, mouse_x, mouse_y);


x = maa.x;
y = maa.y;


if (mouse_check_button_released(mb_left)) {
	
	
	var bullet = instance_create_layer(x,y, "instances", obullet);
	bullet.image_angle = image_angle;
	bullet.direction = image_angle;
	bullet.speed = 8;
	
	
	}