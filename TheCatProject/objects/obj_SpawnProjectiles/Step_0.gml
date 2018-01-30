/// @description Insert description here
// You can write your code in this editor
lastSpawnTimer = lastSpawnTimer + delta_time;
if(lastSpawnTimer > 3000000)
{
	lastSpawnTimer -= 3000000;
	number = round(random_range(0,1) * 4);
	if(room == UranusStage1){
		numberProj = 5;	
	}else if(room = UranusStage2){
		numberProj = 6;	
	}else if(room = UranusStage3){
		numberProj = 7;
	}
	for(i=0;i<numberProj;i+=1)
	{
		n_x = random_range(0,1) * room_width;
		if(n_x <256){
			n_x = 256;	
		}else if(n_x > room_width - 256){
			n_x = room_width - 256	
		}
		n_y = y;
		inst = instance_create_layer(n_x,n_y,"Projectiles",Uranus_Projectile_2);
		inst.speed = -15-i;
		inst.image_angle = 180;
	}
}