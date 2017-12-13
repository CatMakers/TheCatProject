/// @description Insert description here
// NeptuneBoss Moving and shooting

movetimer = movetimer + delta_time;
randdown = random_range(-15,-11);
randup = random_range(11,15);

pc = (HP / 24) * 100;

col = b|g|r;


var hurt;
hurt = keyboard_check_pressed(vk_numpad0);
if (hurt){
	HP -= 4;
	g= g*pc/150;
	b = b*pc/150;
	
}

if(movetimer >5000000){
	speed = random_range(randdown, randup);
	movetimer -= 5000000;
	if(HP <= 12){
		speed *= 2.3;
	}
}



if(y-sprite_height/2<0)
{	
	
	speed = -speed;
	
}
else if(y+sprite_height/2>room_height)
{
	speed=-speed;
}

if(HP<=0){
	//inst = instance_create_layer(x,y,"Boss_Death",obj_NPBossDeath);
	obj_NPBossDeath.x = x;
	obj_NPBossDeath.y = y;
	obj_NPBossDeath.visible = true;
	
	instance_destroy();
}

value = random_range(0,1);
attacktimer = attacktimer + delta_time

if(attacktimer >400000)
{
	attacktimer-=400000;
	
	if(value < 0.5)
	{
		spd = random_range(12, 17);
		
		inst = instance_create_layer(x,y,"Trident",obj_Trident);
		inst.direction = 180;
		inst.speed = spd;
		
	}
	
	
}





