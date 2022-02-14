/// @description Check if enemy destroyed
var cam = view_camera[0];
var cam_y = camera_get_view_y(cam);
var cam_h = camera_get_view_height(cam);
if(!(y < (cam_y + cam_h))) {
	offscreen = true;
}
if(hp <= 0){
	instance_destroy();
}
if(global.boss_battle && !instance_exists(obj_enemy_boss) && !moved){
	x = global.death_x;
	y = global.death_y;
	moved = true;
}
if(moved){
	move_towards_point(512,32,spd);
}
if(point_distance(x,y,512,32) < 5){
	started = true;
	moved = false;
}
if(started){
	path_start(enemy_path,spd,path_action_reverse,false);
	started = false;
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
		unpaused = true;
	}
}