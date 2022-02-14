/// @description Check for not playing
if(global.game_state != states.playing){
	instance_destroy(id,true);
}