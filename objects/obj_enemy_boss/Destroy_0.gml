/// @description Destroy boss
global.death_x = x;
global.death_y = y;
effect_create_above(ef_explosion,x,y,60,c_dkgray);
score += 1000;
