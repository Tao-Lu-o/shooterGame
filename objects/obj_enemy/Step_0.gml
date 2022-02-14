/// @description Check if enemy destroyed
var cam = view_camera[0];
var cam_y = camera_get_view_y(cam);
var cam_h = camera_get_view_height(cam);
if(!(y < (cam_y + cam_h))) {
	offscreen = true;
	//show_debug_message("Enemy " + string(id) + " was offscreen");
}
if(hp <= 0){
	instance_destroy();
}
if (global.game_state == states.paused){
	path_speed = 0;
	spd = 0;
	unpause = false;
}
else{
	spd = tempSpd;
	if(!unpause) {
		path_speed = tempSpd;
		unpause = true;
	}
}