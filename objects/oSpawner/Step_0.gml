//spawn an enemy
timer++;

if instance_number(oEnemyParent) >= global.activeEnemyMax || global.totalEnemySpawned >= global.enemyRoomMax
{
	timer = 0;
}

if timer >= spawnTime && !place_meeting(x, y, oZombie)
{
	//create an enemy
	var _inst = instance_create_depth(x, y ,depth-1, oZombie);
	with(_inst)
	{
		image_alpha = 0;
		state = -1;
	}
	//reset the timer
	timer = 0;
	
}