/// @description Insert description here
// You can write your code in this editor
normasttime += delta_time;

if(normasttime > 800000){
		
	normasttime -= 800000;
	
		
	randspawn = random_range(0,5);
	if(randspawn > 1 && self.visible != true){
		self.visible = true;
		self.image_xscale = 0.001;
		self.image_yscale = 0.001;
		imagegrow = true;
		}
	
	
	//if(image_xscale > 1000000){
	//	instance_destroy();
//	}
}
if(imagegrow){
		image_xscale += 0.01;
		image_yscale += 0.01;
		
}
if(self.image_xscale > 2){
	//self.visible = false;
		instance_destroy();
	}

