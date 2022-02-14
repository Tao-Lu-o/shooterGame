/// @description 
if (hp <= 0) {
	instance_destroy();
}
if(score >= healthMilestone){
	hp++;
	audio_play_sound(snd_health_gain,1,false);
	healthMilestone += 1000;
}
if(score >= bombMilestone && !canBomb){
	bomb++;
	canBomb = true;
	audio_play_sound(snd_colorswitch,1,false);
	if(bombMilestone == 0) bombMilestone += 2000;
	else bombMilestone += 4000;
}