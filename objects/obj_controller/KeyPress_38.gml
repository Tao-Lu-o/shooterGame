/// @description Go up in pause menu
if(global.game_state == states.paused){
	if(pauseOptionSelected == 0){
		pauseOptionSelected = array_length(pauseOption) - 1;
	}
	else pauseOptionSelected--;
}