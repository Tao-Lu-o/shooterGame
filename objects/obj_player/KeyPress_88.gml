/// @description Use bomb
//show_debug_message("Value of canBomb: " + string(canBomb) + ". Value of bomb: " + string(bomb));
if(canBomb){
	bomb -= 1;
	var cam = view_camera[0];
	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	var cam_w = camera_get_view_width(cam);
	var cam_h = camera_get_view_height(cam);
	if(instance_exists(obj_enemy)){
		audio_play_sound(snd_bomb,1,false);
		with (obj_enemy){
			if(x > cam_x && x < (cam_x + cam_w) && y > cam_y && y < (cam_y + cam_h)){
				if(instance_exists(obj_enemy_boss) && id != obj_enemy_boss.id) {
					instance_destroy(self);
				}
				else self.hp -= 10;
			}
		}
	}
	canBomb = false;
}