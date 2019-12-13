/// @description Insert description here
// You can write your code in this editor
if (maa.x > x){
	x += 2;
}
if (maa.x < x){
	x -= 2;
}
if (hyppaa == true){
	y -= 10;
}
if (place_meeting(x, y + 1, opalikka)){
	hyppaa = true;
}

if (place_meeting(x, y, obullet))
{
instance_destroy(oEnemyL1)
}