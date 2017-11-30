if(self.speed == 0){
	if(room == (NeptuneStage2 || NeptuneStage3 || NeptuneStage1 || NeptuneBoss)){
		var moveup;
		moveup = keyboard_check_pressed(vk_up);
		if (moveup){
			vspeed = -12;
		}
	
		var movedown;
		movedown = keyboard_check_pressed(vk_down);
		if (movedown){
			vspeed = 12;
		}
	
		var moveleft;
		moveleft = keyboard_check_pressed(vk_left);
		if (moveleft){
			hspeed = -12;
		}
	
		var moveright;
		moveright = keyboard_check_pressed(vk_right);
		if (moveright){
			hspeed = 8;
		}
	}
}