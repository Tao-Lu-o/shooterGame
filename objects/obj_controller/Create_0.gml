/// @description 

// Seed random number generator.
randomize();

// Game state.
enum states {
	playing,
	paused,
	gameover,
	win
};

// Pause Options
pauseOption = ["Resume", "Restart", "Quit"];
pauseOptionSelected = 0;

// Boss coordinates
global.death_x = 0;
global.death_y = 0;

// Sound settings
BGMvol = audio_sound_get_gain(snd_bgm);
bossVol = audio_sound_get_gain(snd_final_boss);
played = false;
audio_play_sound(snd_bgm,1,true);
