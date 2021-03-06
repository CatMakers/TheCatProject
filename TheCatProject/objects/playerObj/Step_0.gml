if(pause == false)
{
	mVulnearable = true;
	if(mHealth <= 0)
	{
		// "on death"-code goes here
		game_restart();
	}



	if(room == UranusStage1 || room == UranusStage2 || room == UranusStage3 || room == UranusBoss){
		if (!place_meeting(x, y+64, genObject) && room != UranusBoss)
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
	//*****************URANUS BOSS ROOM FUNCTIONS**************
	if(room == UranusBoss){
		for(i = 0; i<ammo; i++){
			inst = bulletArray[i];
			inst.speed = orbit_speed;
			inst.angle += orbit_speed;
			if(inst.angle >= 360){
				inst.angle -= 360;	
			}
			inst.x = lengthdir_x(orbit_distance, inst.angle) + (x);
			inst.y = lengthdir_y(orbit_distance, inst.angle) + (y);		
		}
		
		if(keyboard_check_pressed(vk_down) && ammo >= 1){
			inst = bulletArray[ammo-1];
			inst.speed = 20;
			inst.vspeed = speed;
			inst.direction = 270;
			ammo -= 1;
			
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
	
	// *** ROTATE SPRITE *** \\

	image_angle = point_direction(x, y, x+vspeed, y-hspeed);
}
else
{
	mVulnearable = false;
}