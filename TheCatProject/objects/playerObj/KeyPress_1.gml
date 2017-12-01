if(self.speed == 0)
{
	if(room == NeptuneStage2 || NeptuneStage3 || NeptuneStage1 || NeptuneBoss)
	{
		var moveup;
		moveup = keyboard_check_pressed(vk_up);
		if (moveup)
		{
			vspeed = -8;
		}
	
		var movedown;
		movedown = keyboard_check_pressed(vk_down);
		if (movedown)
		{
			vspeed = 8;
		}
	
		var moveleft;
		moveleft = keyboard_check_pressed(vk_left);
		if (moveleft)
		{
			hspeed = -8;
		}
	
		var moveright;
		with(playerObj) moveright = keyboard_check_pressed(vk_right);
		if (moveright)
		{
			hspeed = 8;
		}
	}
}
