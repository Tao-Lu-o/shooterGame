/// @description Enemy creation
event_inherited();
// Health, attack he gives out, speed,
// and direction (moving left or right).

hp = 3;
atk = 1;
spd = 1;
tempSpd = 1;
dir = 1;
offscreen = false;

// Left and right limits - 25 pixels to the
// left and right of the alien.
start_x = x - 10;
end_x = x + 10;

// Move down every 5 seconds.
move_down_speed = room_speed * 2; 

// Set alarm to move down.
alarm[1] = move_down_speed;

// Alarm for random shooting between 1/2 second and 5 seconds.
alarm[0] = room_speed * random_range(0.5, 5);

// write path code for this boy
 if(enemy_path != noone) path_start(enemy_path,spd,path_action_reverse,false);