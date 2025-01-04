// Inherit the parent event
event_inherited();
hp =15;
spd = 0;
chaseSpd =1.2;
dir = 0;
xspd =0;
yspd =0;


face = 1;

//state machine
state =0;

//shooting state
coolDownTime = 4*60;
shootTimer =irandom(coolDownTime);
windupTime =60;
recoverTime =45;
bulletInst =noone;




