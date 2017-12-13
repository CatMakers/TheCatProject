/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)){
	if(!pause){
		pause = true;
		audio_pause_sound(NeptuneStages);
		audio_pause_sound(NeptuneBossMusic);
		audio_pause_sound(NeptuneBossMusicMad);
		instance_deactivate_all(true);
	}
	else
	{
		pause = false;
		audio_resume_sound(NeptuneStages);
		audio_resume_sound(NeptuneBossMusic);
		audio_resume_sound(NeptuneBossMusicMad);
		instance_activate_all();
	}
}

