/// @description Initialize/re-initialize
score = 0;
global.game_state = states.playing;
global.boss_battle = false;

// Set audio
played = false;
BGMvol = 0.3;
bossVol = 0.5;
audio_sound_gain(snd_bgm,0.3,60);
audio_play_sound(snd_bgm,1,true);
show_debug_message("Value of audio_is_playing = " + string(audio_is_playing(snd_bgm)));
show_debug_message("Value of get_gain = " + string(BGMvol));
