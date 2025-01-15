// Receive damage 
get_damaged(oDamageEnemy);

// Handle death
if (hp <= 0) {
    global.enemyKillCount++;

    // Check if the enemy is of type oEagleEye
    if (object_index == oEagleEye) {
        // Create a dead EagleEye object
        var inst = instance_create_depth(x, y, -y-10, oDeadEagleEye);
        // Make the dead enemy face the player on the X-axis by flipping sprite horizontally
        if (inst.x < oPlayer.x) {
            inst.image_xscale = 1;  // Face right (normal)
        } else {
            inst.image_xscale = -1;  // Face left (flipped)
        }
    }
    // Check if the enemy is of type oDeadEnemy
    else if (object_index == oEnemy) {
        // Create a dead DeadEnemy object
        var inst = instance_create_depth(x, y, -y-10, oDeadEnemy);
        // Make the dead enemy face the player on the X-axis by flipping sprite horizontally
        if (inst.x < oPlayer.x) {
            inst.image_xscale = 1;  // Face right (normal)
        } else {
            inst.image_xscale = -1;  // Face left (flipped)
        }
    }

    // Drop health on random chance
    var _chance = irandom(100);
    if (_chance < 10) {
        instance_create_depth(x, y, depth, oHealthPickup);
    }

    // Destroy the enemy object after death
    instance_destroy();
}
