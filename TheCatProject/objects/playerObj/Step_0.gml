if(mHealth <= 0)
{
	// "on death"-code goes here
	game_restart();
}

lastSpawnTimer = lastSpawnTimer + delta_time;
if(room == UranusStage1 || room == UranusBoss){
	var falling = false;
	if (!place_meeting(x, y+64, genObject))
	{
		falling = true;
	}
	else
	{
		falling = false;
		//jumping = false;
	}
	if(falling){
		vspeed = 24;	
	}
	if(keyboard_check(vk_right)){
		hspeed = 12;	
	}
	if(keyboard_check(vk_left)){
		hspeed = -12;
	}
	if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
		hspeed-=sign(hspeed);
	}
	
	hspeed = clamp(hspeed, -8, 8);
	
	//Projectile Creation
	if(room == UranusStage1){
		if(lastSpawnTimer > 3000000){
			lastSpawnTimer -= 3000000;
			number = round(random_range(0,1) * 4);
			for(i=0;i<number;i+=1)
			{
				n_x = random_range(0,1) * room_width;
				if(n_x < 256){
					n_x = 256;	
				}else if(n_x > room_width){
					n_x = room_width-256;	
				}
				n_y = room_height-512;
				inst = instance_create_layer(n_x,n_y,"Projectiles",Uranus_Projectile_2);
				inst.direction = 90;
				inst.speed = 16+i;
				inst.image_angle=180;
			}
		}
	}
	
	//var jump, abletojump;
	//jump = keyboard_check_pressed(vk_up);
	//if(!jumping){
	//	if(jump){
	//		vspeed = -16;
	//	}
	//	jumping = true;
	//}
}
if(room != UranusStage1 && room != UranusBoss){
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


 