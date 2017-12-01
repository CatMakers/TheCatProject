if(mHealth <= 0)
{
	// "on death"-code goes here
	game_restart();
}


if(room == UranusStage1 || room == UranusBoss){
	if (!place_meeting(x, y+1, genObject))
	{
		gravity = .4;
	}
	else
	{
		gravity = 0;
		jumping = false;
	}
	
	if(keyboard_check(vk_right)){
		hspeed = 8;	
	}
	if(keyboard_check(vk_left)){
		hspeed = -8;
	}
	if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
		hspeed-=sign(hspeed);
	}
	
	hspeed = clamp(hspeed, -8, 8);
	var jump, abletojump;
	jump = keyboard_check_pressed(vk_up);
	if(!jumping){
		if(jump){
			vspeed = -16;
		}
		jumping = true;
	}
}