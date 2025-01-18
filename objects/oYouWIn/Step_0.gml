//fade in 
endKey = global.endKey;
alpha +=alphaSpd;
alpha = clamp(alpha, 0,1);

//restart
if endKey && alpha >= 1
{
	game_end();
	//game_restart(); // old school restart  
}