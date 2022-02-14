/// @description Select pause option 
if(global.game_state == states.paused){
	if(pauseOptionSelected == 0){
		global.game_state = states.playing;
		if(audio_is_playing(snd_bgm) && audio_sound_get_gain(snd_bgm) < BGMvol){
			audio_sound_gain(snd_bgm,BGMvol,60);
		}
		if(audio_is_playing(snd_final_boss) && audio_sound_get_gain(snd_final_boss) < bossVol){
			audio_sound_gain(snd_final_boss,bossVol,60);
		}
	}
	if(pauseOptionSelected == 1){
		game_restart();
	}
	if(pauseOptionSelected == 2){
		game_end();
	}
}
