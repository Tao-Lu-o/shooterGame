/// @description Bullet movement
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
if(x > cam_x && x < (cam_x + cam_w) && y > cam_y && y < (cam_y + cam_h)) offscreen = false
else offscreen = true
// Only move while playing, not paused.
if (global.game_state == states.playing && !offscreen) {
	speed = spd;
} else {
	speed = 0;
	instance_destroy(id,true);
}