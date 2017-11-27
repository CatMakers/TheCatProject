/// @description Insert description here
// NeptuneBoss Moving and shooting

movetimer = movetimer + delta_time;
randdown = random_range(-15,-5);
randup = random_range(5,15);

if(movetimer >5000000){
	speed = random_range(randdown, randup);
	movetimer -= 5000000;
}

if(y-sprite_height/2<0)
{	
	
	speed = -speed;
	
}
else if(y+sprite_height/2>room_height)
{
	speed=-speed;
}



value = random_range(0,1);
attacktimer = attacktimer + delta_time

if(attacktimer >400000)
{
	attacktimer-=400000;
	
	if(value < 0.5)
	{
		spd = random_range(10, 17);
		
		inst = instance_create_layer(x,y,"Trident",obj_Trident);
		inst.direction = 180;
		inst.speed = spd;
	}
	
	
}

/*		Trying to et it to only fire once in one direction
		and then later on in the opp. dir. It will push
		the boxes into the boss. You have to line them and
		I'm going to make him follow you up and down.

stormaway = true;

stormtimer = stormtimer + delta_time



if(stormtimer >400000)
{
	stormtimer-=400000;
	inst = instance_create_layer(x,y,"Storm",obj_Storm);
	stilltimer = 0.0;
	stilltimer = stilltimer + delta_time;
		
	
	inst.direction = 180;
	inst.speed = spd;

	
	
}*/




