//fade in 
shootKey = global.shootKey;
alpha +=alphaSpd;
alpha = clamp(alpha, 0,1);

//restart
if shootKey && alpha >= 1
{
	show_debug_message(array_length(global.PlayerWeapons))
	room_restart();
	//game_restart(); // old school restart  
}