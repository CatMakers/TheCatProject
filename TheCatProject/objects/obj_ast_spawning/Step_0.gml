/// @description Insert description here
// You can write your code in this editor

fastasttime += delta_time;
normasttime += + delta_time;
slowasttime += delta_time;
dangertime += delta_time;
supertime += delta_time;

if(supertime > 8000000){
	supertime -= 8000000;
	randspawn = random_range(1,6);
	val = 0 - 256;
	val2 = 27;
	if(randspawn > 3){
		//direct = random_range(1,6);
		//if(direct>3){
		//	val = 2560 + 256;
			//val2 = -27;
		//}
		//else{
		//	val = 0 - 256;
			//val2 = 27;
		//}
		temp = random_range(40,47) * 200;
		dang = instance_create_layer((val), temp,"DangerAstriod",obj_DangerAstriod);
		dang.speed = val2;
		//if (val2<0){
		//	dang.image_xscale = -1;
		//}
		temp = random_range(30,37) * 200;
		dang = instance_create_layer((val), temp,"DangerAstriod",obj_DangerAstriod);
		dang.speed = val2;
		///if (val2<0){
		//	dang.image_xscale = -1;
		//}
		temp = random_range(20,27) * 200;
		dang = instance_create_layer((val), temp,"DangerAstriod",obj_DangerAstriod);
		dang.speed = val2;
		//if (val2<0){
		//	dang.image_xscale = -1;
		//}
		temp = random_range(10,17) * 200;
		dang = instance_create_layer((val), temp,"DangerAstriod",obj_DangerAstriod);
		dang.speed = val2;
		//if (val2<0){
		//	dang.image_xscale = -1;
		//}
		if(dang.x > 2590){
			instance_destroy();
		}
	}
}

if(fastasttime > 700000){
	fastasttime -= 700000;
	randspawn = random_range(0,10);
	if(randspawn > 5){
		inst = instance_create_layer((0-256), 8600,"FastAstriod",obj_FastAstriod);
		inst.speed = 25;
		inst = instance_create_layer((0-256), 6600,"FastAstriod",obj_FastAstriod);
		inst.speed = 25;
		inst = instance_create_layer((0-256), 4600,"FastAstriod",obj_FastAstriod);
		inst.speed = 25;
		inst = instance_create_layer((0-256), 2600,"FastAstriod",obj_FastAstriod);
		inst.speed = 25;
		if(inst.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 5){
		inst = instance_create_layer((2560 + 256), 9000,"FastAstriod",obj_FastAstriod);
		inst.speed = -23;
		inst = instance_create_layer((2560 + 256), 7000,"FastAstriod",obj_FastAstriod);
		inst.speed = -23;
		inst = instance_create_layer((2560 + 256), 5000,"FastAstriod",obj_FastAstriod);
		inst.speed = -23;
		inst = instance_create_layer((2560 + 256), 3000,"FastAstriod",obj_FastAstriod);
		inst.speed = -23;
		if(inst.x < -1){
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
		norm = instance_create_layer((0-256), 6400,"NormAst",obj_NormAstriod);
		norm.speed = 18;
		norm = instance_create_layer((0-256), 4400,"NormAst",obj_NormAstriod);
		norm.speed = 18;
		norm = instance_create_layer((0-256), 2400,"NormAst",obj_NormAstriod);
		norm.speed = 18;
		if(norm.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 3){
		norm = instance_create_layer((2560 + 256), 9400,"NormAst",obj_NormAstriod);
		norm.speed = -14;
		norm = instance_create_layer((2560 + 256), 7400,"NormAst",obj_NormAstriod);
		norm.speed = -14;
		norm = instance_create_layer((2560 + 256), 5400,"NormAst",obj_NormAstriod);
		norm.speed = -14;
		norm = instance_create_layer((2560 + 256), 3400,"NormAst",obj_NormAstriod);
		norm.speed = -14;
		if(norm.x < -1){
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
		slow = instance_create_layer((0-256), 7200,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = 8;
		slow = instance_create_layer((0-256), 5200,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = 8;
		slow = instance_create_layer((0-256), 3200,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = 8;
		if(slow.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 3){
		slow = instance_create_layer((2560 + 256), 8800,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = -10;
		slow = instance_create_layer((2560 + 256), 6800,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = -10;
		slow = instance_create_layer((2560 + 256), 4800,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = -10;
		slow = instance_create_layer((2560 + 256), 2800,"SlowAstriod",obj_SlowSafeAstriod);
		slow.speed = -10;
		if(slow.x < -1){
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
		dang = instance_create_layer((0-256), 6200,"DangerAstriod",obj_DangerAstriod);
		dang.speed = 27;
		dang = instance_create_layer((0-256), 4200,"DangerAstriod",obj_DangerAstriod);
		dang.speed = 27;
		dang = instance_create_layer((0-256), 2200,"DangerAstriod",obj_DangerAstriod);
		dang.speed = 27;
		if(dang.x > 2590){
			instance_destroy();
		}
	}
	if(randspawn < 3){
		dang = instance_create_layer((2560 + 256), 8000,"DangerAstriod",obj_DangerAstriod);
		dang.speed = -29;
		dang.image_xscale = -1;
		dang = instance_create_layer((2560 + 256), 6000,"DangerAstriod",obj_DangerAstriod);
		dang.speed = -29;
		dang.image_xscale = -1;
		dang = instance_create_layer((2560 + 256), 4000,"DangerAstriod",obj_DangerAstriod);
		dang.speed = -29;
		dang.image_xscale = -1;
		dang = instance_create_layer((2560 + 256), 2000,"DangerAstriod",obj_DangerAstriod);
		dang.speed = -29;
		dang.image_xscale = -1;
		if(dang.x < -1){
			instance_destroy();
		}
	}
}