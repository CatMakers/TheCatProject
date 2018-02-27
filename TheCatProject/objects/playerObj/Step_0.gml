
if(mHealth <= 0)
{
	// "on death"-code goes here
	game_restart();
}


if(room == UranusStage1 || room == UranusStage2 || room == UranusStage3 || room == UranusBoss){
	if (!place_meeting(x, y+64, genObject))
	{
		vspeed = 24
	}	
	if(keyboard_check(vk_right)){
		hspeed = 16;	
	}
	if(keyboard_check(vk_left)){
		hspeed = -16;
	}
	if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
		hspeed-=sign(hspeed);
	}
	
	hspeed = clamp(hspeed, -16, 16);
}
if(room != UranusStage1 && room != UranusStage2 && room != UranusStage3 && room != UranusBoss){
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
}
if(room == NeptuneBoss){
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
}




//*****************SATURN BELT MOVEMENT*************
if(room == SaturnBeltStage1)
{
	
	if(keyboard_check_pressed(vk_right) && hspeed == 0){
		startpointx = x;
		hspeed = 20;
	}
	if(x >= (startpointx + 200)){
		hspeed = 0;
	}
	if(keyboard_check_pressed(vk_left) && hspeed == 0){
		startpointx = x;
		hspeed = -20;
	}
	if(x <= (startpointx - 200)){
		hspeed = 0;
	}

	
// **********GOING UP AND DOWN****** 	
	if(keyboard_check_pressed(vk_up) && vspeed == 0){
		startpointy = y;
		vspeed = -20;
	}
	if(y <= (startpointy - 200)){
		vspeed = 0;
	}
	if(keyboard_check_pressed(vk_down) && vspeed == 0){
		startpointy = y;
		vspeed = 20;
	}
	if(y >= (startpointy + 200)){
		vspeed = 0;
	}
}
	
//***************ROOM 11******************

if(room == room11){
	if(keyboard_check_pressed(vk_right)){
		hspeed = +16;	
	}
	if(keyboard_check_released(vk_right)){
		hspeed = 0;
		vspeed = 0;
	}
	if(keyboard_check_pressed(vk_left)){
		hspeed = -16;
	}
	if(keyboard_check_released(vk_left)){
		hspeed = 0;
		vspeed = 0;
	}
	if(self.x > ((room_width*.5) + 50) && keyboard_check_pressed(vk_right)){
		vspeed = 14;
	}
	if(self.x < ((room_width*.5) - 50) && keyboard_check_pressed(vk_left)){
		vspeed = 14;
	}
	
	
	if(self.x > ((room_width*.5) + 50) && keyboard_check_pressed(vk_left)){
		vspeed = -14;
	}
	if(self.x > ((room_width*.5) - 50) && keyboard_check_pressed(vk_right)){
		vspeed = -14;
	}
	if(self.y >= 1700 && self.x < (room_width*.5) + 50 && self.x < (room_width*.5) - 50){
		vspeed = 0;
	}
}