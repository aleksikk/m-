/// @description rakentaminen
// You can write your code in this editor
if(room == room0111){
	if (global.tila == 0){
		instance_create_layer(mouse_x, mouse_y, "Instances", opalikka);
		with (opalikka){
			if !place_snapped(64, 64)
		      {
		      move_snap(64, 64);
			  }
		}
	}

	if (global.tila == 2){
		sprite_index = playero3;
		lyo = true;
		alarm_set(1, room_speed * 0.1);
	}
	if (global.tila == 1){
		var klikattu = instance_position(mouse_x, mouse_y,opalikka);
		
		if(instance_exists(klikattu)){
			//if(){
			instance_destroy(klikattu);
			//}
		}
		
	}
}