/// @description Check if enemy destroyed
var cam = view_camera[0];
var cam_y = camera_get_view_y(cam);
var cam_h = camera_get_view_height(cam);
if(!(y < (cam_y + cam_h))) {
	offscreen = true;
}
if(hp < 30){
	effect_create_above(ef_explosion,x,y,1,c_dkgray);
}
if(hp < 20){
	effect_create_above(ef_explosion,x,y,5,c_dkgray);
}
if(hp < 10){
	effect_create_above(ef_explosion,x,y,10,c_dkgray);
}
if(hp <= 0){
	instance_destroy();
}
if(global.boss_battle){
	if(!started){
		path_start(enemy_path,spd,path_action_reverse,false);
		started = true;
	}
}
if(global.game_state == states.paused){
	spd = 0;
	path_speed = 0;
	unpaused = false;
}
else {
	spd = tempSpd;
	if(!unpaused){
		path_speed = tempSpd;
		unpaused= true;
	}
}