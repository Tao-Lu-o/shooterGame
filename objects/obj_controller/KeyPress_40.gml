/// @description Go down in pause menu
if(global.game_state == states.paused){
	if(pauseOptionSelected == array_length(pauseOption) - 1){
		pauseOptionSelected = 0;
	}
	else pauseOptionSelected++;
}
