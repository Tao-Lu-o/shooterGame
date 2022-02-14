/// @description Shoot bullets

// Create a new bullet with the same damage
// as the player can give.
// Control shooting with this boolean.
/// Code for shooting
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);
if (can_shoot && global.game_state == states.playing) {
	if(x > cam_x && x < (cam_x + cam_w) && y > cam_y && y < (cam_y + cam_h)){
		can_shoot = false;
	
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
		bullet.atk = atk;

		// Give it an up direction and speed.
		bullet.direction = point_direction(x, y, x, y-1);
		bullet.speed = bullet.spd;
	
		// Set alarm for when we can shoot again.
		alarm[0] = shoot_delay;
	}
}