/// @description Move enemy down

if(global.game_state != states.paused && global.boss_battle){
	// Move enemy down 30 pixels.
	y += 30;
}
// Reset alarm.
alarm[1] = move_down_speed;