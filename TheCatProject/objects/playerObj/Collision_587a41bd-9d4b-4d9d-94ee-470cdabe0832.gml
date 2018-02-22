/// @description Insert description here
// You can write your code in this editor
if(mVulnearable)
{
	if(room != UranusBoss || ammo <= 3){
		show_debug_message("hit!");
		mVulnearable = false;
		mAlpha = 0.5;
		mHealth -= 20;
		// alarm 0 set to run in 30 ticks
		alarm[0] = 30;
	}
}

if(room == UranusBoss){
	if(ammo <3){
		inst = instance_create_layer(x, y, "Projectiles_2", Uranus_Projectile_1);
		bulletArray[ammo] = inst.id;
		ammo += 1;	
	}
}