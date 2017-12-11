/// @description Insert description here
// You can write your code in this editor
if(isReflected == true && hspeed > 0){
	obj_NeptuneBoss.HP -= 4;
	obj_NeptuneBoss.b = obj_NeptuneBoss.b*pc/100;
	obj_NeptuneBoss.g = obj_NeptuneBoss.g*pc/100;
	
	instance_destroy(); 
}