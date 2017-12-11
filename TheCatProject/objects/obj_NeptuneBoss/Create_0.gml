/// @description Insert description here
// You can write your code in this editor


HP = 24;
var pc;

b = $ff0000;
g = $00ff00;
r = $0000ff;

col = b|g|r;

speed = 9;
attacktimer = 0.0;
stormtimer = 0.0;
movetimer = 0.0;
stormaway = true;
direction = 90