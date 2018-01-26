/// @description Insert description here
// You can write your code in this editor



if(onGround == true)
{
	onGround_timer = onGround_timer + delta_time;
	
	if(onGround_timer > 3000000)
	{
		sprite_index = Uranus_projectile_2_3_sprite;
		onGround_timer = - 3000000
	}
}