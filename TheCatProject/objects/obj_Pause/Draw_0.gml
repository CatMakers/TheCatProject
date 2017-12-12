/// @description Insert description here
// You can write your code in this editor

if(pause){
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_font(font_pause);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2,room_height/2,"Zues has froze time and space!!!!! \n so you should really  do some homework");
	draw_set_color(c_black);
	
}
