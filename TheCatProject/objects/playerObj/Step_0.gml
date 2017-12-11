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
var shield;
shield = keyboard_check_pressed(vk_space);
if(shield && mVulnearable){
	shieldObject.visible = true;
	mVulnearable = false;
	//alarm[1]= .3 *(delta_time - ot );
}

if(shieldObject.visible ){
	ot += delta_time;
}
if(ot >2000000){
	ot = 0;
	mVulnearable = true;
	shieldObject.visible = false;
 }
 