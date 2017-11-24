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
	
	if(value < 1)
	{
		inst = instance_create_layer(x,y,"Projectiles",Uranus_Projectile_1);
		inst.direction = 180
		inst.speed = 3
		
		inst = instance_create_layer(x,y,"Projectiles",Uranus_Projectile_1);
		inst.direction = 135
		inst.speed = 3
		
		inst = instance_create_layer(x,y,"Projectiles",Uranus_Projectile_1);
		inst.direction = 225
		inst.speed = 3
	}
	else if(value < 0.66)
	{
	
	}

	else
	{
	
	}
	

}


