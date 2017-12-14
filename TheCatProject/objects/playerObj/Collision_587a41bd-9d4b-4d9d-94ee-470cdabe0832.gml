/// @description Insert description here
// You can write your code in this editor
if(mVulnearable )
{
		show_debug_message("hit!");
		mVulnearable = false;
		mAlpha = 0.5;
		mHealth -= 20;
		// alarm 0 set to run in 30 ticks
		alarm[0] = 30;
}