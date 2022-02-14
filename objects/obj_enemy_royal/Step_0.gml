/// @description Move enemy

event_inherited();
if(instance_exists(obj_player)) direction = point_direction(x,y,obj_player.x,obj_player.y);
image_angle = direction;
// Everytime we hit start_x/end_x bounded
// box, reverse direction.
if (x <= start_x || x >= end_x) {
	// Reverse direction.
	dir *= -1;
}

x += spd * dir;