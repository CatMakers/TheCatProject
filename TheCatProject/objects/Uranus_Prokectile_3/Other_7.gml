/// @description Insert description here
// You can write your code in this editor

if(generation<3)
{	
	inst = instance_create_layer(x,y,"Projectiles",Uranus_Prokectile_3)
	inst.generation = generation + 1
	inst.direction = direction + (45 * random(1))
	inst.speed = speed
	
	inst = instance_create_layer(x,y,"Projectiles",Uranus_Prokectile_3)
	inst.generation = generation + 1
	inst.direction = direction - (45 * random(1))
	inst.speed = speed
}

instance_destroy(); 