/// @description Insert description here
// You can write your code in this editor

if(self.visible){
	image_speed = 1;
	if(image_index == image_number -1){
		image_xscale *= .7;
		image_yscale *= .7;
	}
	deathtimer+=delta_time;
}

if(deathtimer > 3000000){
	instance_destroy(); 
	room_goto_next();
}