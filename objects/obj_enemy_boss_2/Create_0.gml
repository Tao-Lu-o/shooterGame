/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
/// @description Variables and setup

spd=10;
atk=5;
hp=100;
tempSpd = 10;
dir = 1;
offscreen = false;
started = false;
moved = false;
unpaused = true;
alarm[0] = room_speed * random_range(0.5, 5);
if(enemy_path != noone) {
	path_speed = spd;
}