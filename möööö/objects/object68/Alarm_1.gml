if image_alpha > 0 {
	
image_alpha-=0.1;
alarm[1] = 30;
} else if image_alpha <=0 {

alarm[0] = 10000;
}