/// @description Variables and setup

hp = 1;
atk = 1;
spd = 1;
tempSpd = 1;
dir = 1;
offscreen = false
unpause = true;

alarm[0] = room_speed * random_range(0.5, 5);
if(enemy_path != noone) {
	path_speed = spd;
	path_start(enemy_path,spd,path_action_reverse,false);
}