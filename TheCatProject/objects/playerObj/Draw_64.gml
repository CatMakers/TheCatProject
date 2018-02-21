/// @description Insert description here
// You can write your code in this editor

draw_healthbar(75,75,175,100,mHealth,c_black,c_red,c_green, 0,1,1);

if(pause == true)
{
	if(menuButton == 0)
	{
		menuButton = instance_create_depth((window_get_height()/2),(window_get_width()/2), -10, obj_mainMenuButton);
	}
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, 5100, 5700, false);
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_set_font(font_pause);
	draw_text(370, 100, "PAUSED");

	

}
else
{
	if(menuButton != 0)
	{
		instance_destroy(menuButton);
		menuButton = 0;
	}
}