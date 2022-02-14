/// @description Move and check
// Inherit the parent event
event_inherited();

if(instance_exists(obj_player)) direction = point_direction(x,y,obj_player.x,obj_player.y);
image_angle = direction;

// Track player if the UFO is within the camera
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
if(x > cam_x && x < (cam_x + cam_w) && y > cam_y && y < (cam_y + cam_h)){
	if(instance_exists(obj_player) && global.game_state != states.paused) move_towards_point(obj_player.x,obj_player.y,spd);
	else speed = 0;
}
