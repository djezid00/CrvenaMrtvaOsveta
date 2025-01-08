
//receive damage 
get_damaged(oDamageEnemy)
// Handle death
if (hp <= 0) {
	global.enemyKillCount++;
    instance_destroy();
}


