/// @description Variables and setup
event_inherited();
hp = 2;
atk = 1;
spd = 5;
tempSpd = 5;
dir = 1;
offscreen = false

alarm[0] = room_speed * random_range(0.5, 5);
if(enemy_path != noone) path_start(enemy_path,spd,path_action_reverse,false);