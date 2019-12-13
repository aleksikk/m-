/// @description Insert description here
// You can write your code in this editor
health -= 10;
other.y -= 100;
if(health < 0){
	room_goto(gameover);
}