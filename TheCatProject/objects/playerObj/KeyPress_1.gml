if(self.speed == 0)
{
	if(room == PlutoStage2 || PlutoStage3 || PlutoStage1)
	{
		var moveup;
		moveup = keyboard_check_pressed(vk_up);
		if (moveup)
		{
			vspeed = -4;
		}
	
		var movedown;
		movedown = keyboard_check_pressed(vk_down);
		if (movedown)
		{
			vspeed = 4;
		}
	
		var moveleft;
		moveleft = keyboard_check_pressed(vk_left);
		if (moveleft)
		{
			hspeed = -4;
		}
	
		var moveright;
		with(playerObj) moveright = keyboard_check_pressed(vk_right);
		if (moveright)
		{
			hspeed = 4;
		}
	}
}