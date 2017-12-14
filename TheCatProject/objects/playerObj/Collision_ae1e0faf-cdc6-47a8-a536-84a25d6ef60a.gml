// on collision with trident, set invulnearability to true, decrease sprite alpha, and take damage
if(mVulnearable && !obj_trident.isReflected)
{
		show_debug_message("hit!");
		mVulnearable = false;
		mAlpha = 0.5;
		mHealth -= 25;
		// alarm 0 set to run in 30 ticks
		alarm[0] = 30;
}