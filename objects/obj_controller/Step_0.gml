/// @description 

// Gameover player defeated
if (!instance_exists(obj_player)) {
	global.game_state = states.gameover;
	//show_debug_message("Player eliminated");
	if(audio_is_playing(snd_final_boss)){
		audio_sound_gain(snd_final_boss,0,60);
		audio_stop_sound(snd_final_boss)
	}
	if(audio_is_playing(snd_bgm)){
		audio_sound_gain(snd_bgm,0,60);
		audio_stop_sound(snd_bgm);
	}
	if(!played) {
		audio_play_sound(snd_gameover,1,false);
		played = true;
	}
}

// Gameover if enemy offscreen
if (instance_exists(obj_enemy)){
	for(var i=0; i < instance_number(obj_enemy); i++;){
		var inst = instance_find(obj_enemy,i);
		with (inst) {
			if offscreen {
				//show_debug_message("Enemy offscreen");
				instance_deactivate_object(obj_player)
				global.game_state = states.gameover;
				if(audio_is_playing(snd_final_boss)){
					audio_sound_gain(snd_final_boss,0,60);
					audio_stop_sound(snd_final_boss);
				}
				if(audio_is_playing(snd_bgm)){
					audio_sound_gain(snd_bgm,0,60);
					audio_stop_sound(snd_bgm);
				}
				if(!obj_controller.played) {
					audio_play_sound(snd_gameover,1,false);
					obj_controller.played = true;
				}
			}
		}
	}
}

// Win if all enemies dead and player is still alive
if(!instance_exists(obj_enemy) && instance_exists(obj_player)){
	global.game_state = states.win;
	global.boss_battle = false;
	if(audio_is_playing(snd_final_boss)){
		audio_sound_gain(snd_final_boss,0,60);
		audio_stop_sound(snd_final_boss)
	}
	if(audio_is_playing(snd_bgm)){
		audio_sound_gain(snd_bgm,0,60);
		audio_stop_sound(snd_bgm);
	}
	if(!audio_is_playing(snd_win)){
		audio_play_sound(snd_win,1,true);
	}
}