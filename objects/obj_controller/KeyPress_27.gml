/// @description Pause game
if (global.game_state == states.playing) {
	global.game_state = states.paused
	if(audio_is_playing(snd_bgm)){
		audio_sound_gain(snd_bgm,0.1,60);
	}
	if(audio_is_playing(snd_final_boss)){
		audio_sound_gain(snd_final_boss,0.1,60);
	}
} else {
	global.game_state = states.playing;
	if(audio_is_playing(snd_bgm) && audio_sound_get_gain(snd_bgm) < BGMvol){
		audio_sound_gain(snd_bgm,BGMvol,60);
	}
	if(audio_is_playing(snd_final_boss) && audio_sound_get_gain(snd_final_boss) < bossVol){
		audio_sound_gain(snd_final_boss,bossVol,60);
	}
}