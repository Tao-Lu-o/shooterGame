///@description Variables and setup
event_inherited();
hp = 1;
atk = 1;
spd = 3;
tempSpd = 3;
dir = 1;
offscreen = false

alarm[0] = room_speed * random_range(0.5, 5);
if(enemy_path != noone) {
	path_speed = spd;
	path_start(enemy_path,spd,path_action_reverse,false);
}

