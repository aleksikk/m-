/// @description Insert description here
// You can write your code in this editot
if (keyboard_check(ord("D"))){
	x += nopeus;
	image_xscale = 1;
}	
if (keyboard_check(ord("A"))){
	x -= nopeus;
	image_xscale = -1;
}	
if (keyboard_check(ord("A")) or keyboard_check(ord("D"))){
	juoksee = true;
}
else {
	juoksee = false;
}

if (juoksee == true && lyo == false){
	sprite_index = playero2;
}
if (juoksee == false && lyo == false){
	sprite_index = playero;
}
if !place_meeting(x, y + 1, opalikka)
   {
   gravity = 0.1;
   }
else
   {
   gravity = 0;
   vspeed = 0;
   }
if (place_meeting(x + 1, y - 1, opalikka))
   {
	   x -= 4;
	opalikka.solid = true;
   }
   if (place_meeting(x, y, opalikka))
   {
	   y -= 4;
	opalikka.solid = true;
   }
else{
	opalikka.solid = false;
}

if (hyppaa == true){
	y -= 10;
}

if (place_meeting(x, y, oWater)) 
{
gravity -= 0.12;
}