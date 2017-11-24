/// @description Update
// You can write your code in this editor

show_debug_message(y);
if(y-sprite_height/2<0)
{
	speed = -speed;
}
else if(y+sprite_height/2>room_height)
{
	speed=-speed;
}

value = random_range(0,1);
last_attack_timer = last_attack_timer + delta_time

if(last_attack_timer > 3000000)
{
	last_attack_timer-=3000000;
	sprite_index = UranusAttackSprite
	
	if(value < 0.5)
	{
		spd = 10;
		
		inst = instance_create_layer(x,y,"Projectiles",Uranus_Projectile_1);
		inst.direction = 180;
		inst.speed = spd;
		
		inst = instance_create_layer(x,y,"Projectiles",Uranus_Projectile_1);
		inst.direction = 135;
		inst.speed = spd;
		
		inst = instance_create_layer(x,y,"Projectiles",Uranus_Projectile_1);
		inst.direction = 225;
		inst.speed = spd;
	}
	else if(value < 1)
	{
		number = round(random_range(0,1) * 4);
		for(i=0;i<number;i+=1)
		{
			n_x = random_range(0,1) * room_width;
			n_y = room_width/10 
			inst = instance_create_layer(n_x,n_y,"Projectiles",Uranus_Projectile_2);
		}
	}

	else
	{
	
	}
	

}


