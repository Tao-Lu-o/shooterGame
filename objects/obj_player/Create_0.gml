/// @description Variables and setup

// Health
hp = 10;

// Bomb
canBomb = false;
bomb = 0;

// Speed - 3 pixels per frame, so about 180 pixels
// per second if we have a 60 FPS rate.
spd = 10;

// Damage player can cause.
atk = 1;

// Add delay to shooting so it looks better.
// Only allow 5 bullets a second.
can_shoot = true;
shoot_delay = room_speed * 0.2;

direction = point_direction(x,y,x, y-1);

// Health automatic add based on score
healthMilestone = 1000