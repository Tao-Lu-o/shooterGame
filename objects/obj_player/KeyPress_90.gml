/// @description Change colour
if(sprite_index == spr_player_blue) sprite_index = spr_player_red;
else sprite_index = spr_player_blue;
audio_play_sound(snd_colorswitch,1,false);
