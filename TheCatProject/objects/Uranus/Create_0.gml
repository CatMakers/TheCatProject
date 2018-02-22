/// @description Creation
// You can write your code in this editor

hp = 100;
var pc;
b = $ff0000;
g = $00ff00;
r = $0000ff;

col = b|g|r;
speed = 15;
last_attack_timer = 0.0;
value = irandom(1); // why always 1??? https://docs.yoyogames.com/source/dadiospice/002_reference/maths/real%20valued%20functions/irandom.html
if(value == 0)
{
	direction = 180;
	speed = -speed;
}
else
{
	direction = 0;
	image_xscale *= -1;
}
	