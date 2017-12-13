/// @description Insert description here
// You can write your code in this editor
if(shieldObject.visible && isReflected == false){
	hspeed = -hspeed + 4;
	self.image_xscale *= -1;
	isReflected = true;
}