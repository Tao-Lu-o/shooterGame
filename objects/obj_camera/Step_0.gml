/// @description Orient camera on player

if(global.game_state == states.playing){
	if(instance_exists(obj_player)){
		var cam_x = camera_get_view_x(cam);
		var cam_y = camera_get_view_y(cam);
		var cam_w = camera_get_view_width(cam);
		var cam_h = camera_get_view_height(cam);
		
		// Camera hit end of room
		if(cam_y == 0){
			spd = 0;
			global.boss_battle = true;
			//obj_controller.alarm[0] = 60;
		}
		
		// make sure player stays in camera view
		if(obj_player.x - obj_player.sprite_width/2 <= cam_x){
			obj_player.x = cam_x + obj_player.sprite_width / 2;
		}
		if(obj_player.x + obj_player.sprite_width/2 >= cam_x + cam_w){
			obj_player.x = cam_x + cam_w - obj_player.sprite_width / 2;
		}
		if(obj_player.y - obj_player.sprite_height/2 <= cam_y){
			obj_player.y = cam_y + obj_player.sprite_height / 2;
		}
		if(obj_player.y - obj_player.sprite_height/2 >= cam_y + cam_h){
			obj_player.y = cam_y + cam_h - obj_player.sprite_height / 2;
		}
		// set player and cam speed to same
		speed = spd;
		if(instance_exists(obj_player)) obj_player.speed = spd;
	}
} 

else {
	speed = 0;
	if(instance_exists(obj_player)) obj_player.speed = 0;
}
