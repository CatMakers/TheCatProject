/// @description Insert description here
// You can write your code in this editor


if(fastasttime > 700000){
		
	fastasttime -= 700000;
		
	randspawn = random_range(0,10);
	if(randspawn > 5){
			
		inst = instance_create_layer((0-256), 8600,"FastAstriod",obj_FastAstriod);
		inst.speed = 25;
		
		if(inst.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 5){
			
		secnst = instance_create_layer((2560 + 256), 9000,"FastAstriod",obj_FastAstriod);
		secnst.speed = -23;
		
		if(secnst.x < -1){
			instance_destroy();
		}
	}
}

if(normasttime > 800000){
		
	normasttime -= 800000;
		
	randspawn = random_range(0,5);
	if(randspawn > 3){
			
		norm = instance_create_layer((0-256), 8400,"NormAst",obj_NormAstriod);
		norm.speed = 18;
		
		if(norm.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 3){
			
		snorm = instance_create_layer((2560 + 256), 9400,"NormAst",obj_NormAstriod);
		snorm.speed = -14;
		
		
		if(snorm.x < -1){
			instance_destroy();
		}
	}
}

if(slowasttime > 1500000){	
	slowasttime -= 1500000;
		
	randspawn = random_range(0,5);
	if(randspawn > 3){
			
		slow = instance_create_layer((0-256), 9200,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = 8;
		if(slow.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 3){
			
		slow2 = instance_create_layer((2560 + 256), 8800,"SlowAstriod",obj_SlowSafeAstriod);
		slow2.speed = -10;
		
		if(slow2.x < -1){
			instance_destroy();
		}
	}
}

if(dangertime > 500000){
	dangertime -= 500000;
	randspawn = random_range(0,5);
	if(randspawn > 3){
			
		dang = instance_create_layer((0-256), 8200,"DangerAstriod",obj_DangerAstriod);
		dang.speed = 27;
		if(dang.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 3){
			
		dang2 = instance_create_layer((2560 + 256), 8000,"DangerAstriod",obj_DangerAstriod);
		dang2.speed = -29;
		dang2.image_xscale = -1;
		
		if(dang2.x < -1){
			instance_destroy();
		}
	}
}

