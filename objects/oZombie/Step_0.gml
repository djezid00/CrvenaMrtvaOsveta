<<<<<<< Updated upstream
//state machine
switch (state)
{
	case 0:
	//chase the player
=======
// Pausing on player getting hit
if instance_exists(oScreenPause) {
    image_speed = 0;
    exit;
} else {
    image_speed = 1;
}

// Code commands
// var _wallCollisions = true; // Unused in the code
var _getDamage = true;

// State machine
switch (state) {
    // Spawn state
    case -1:
        if (image_alpha < 1) {
            spd = 0;
            image_alpha += fadeSpd;
        }
        
        // _wallCollisions = false;
        _getDamage = false;
>>>>>>> Stashed changes

        if (image_alpha >= 1) {
            spd = emergeSpd;
            dir = 270;
        }

        if (!place_meeting(x, y, oWall)) {
            state = 0; // Transition to chasing state
        }
        break;

    // Chase the player
    case 0:
        if (instance_exists(oPlayer)) {
            // Check if a direct path is blocked
            if (mp_grid_path(global.grid, path, x, y, oPlayer.x, oPlayer.y, true)) {
                // Follow the path
                path_start(path, 1, path_action_stop, false);
            } else {
                // Default movement (direct chase)
                dir = point_direction(x, y, oPlayer.x, oPlayer.y);
                xspd = lengthdir_x(chaseSpd, dir);
                yspd = lengthdir_y(chaseSpd, dir);

                if (!place_meeting(x + xspd, y, oWall)) {
                    x += xspd;
                }
                if (!place_meeting(x, y + yspd, oWall)) {
                    y += yspd;
                }
            }
        }
        break;

    // Pause and shoot
    case 1:
        #region
        if (instance_exists(oPlayer)) {
            dir = point_direction(x, y, oPlayer.x, oPlayer.y);
        }
        spd = 0;

        // Shoot a bullet
        shootTimer++;

        // Create the bullet
        if (shootTimer == 1) {
            bulletInst = instance_create_depth(x, y, depth, oBulletEnemy);
        }

        // Shoot the bullet after the windup time is over
        if (shootTimer == windupTime && instance_exists(bulletInst)) {
            bulletInst.state = 1;
        }

        // Recover and return to chasing the player
        if (shootTimer > windupTime + recoverTime) {
            // Go back to chasing the player
            state = 0;

            // Reset the timer
            shootTimer = 0;
        }
        #endregion
        break;
}

// Movement calculation
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

<<<<<<< Updated upstream
xspd = lengthdir_x(spd, dir)
yspd = lengthdir_y(spd, dir)

//correct face 
if dir > 90 && dir <270
{
	face =-1
}else{
	face =1;
}

if (dir >= 0 && dir < 90) || (dir >= 330 && dir < 360) {
	face = 0;
=======
// Correct facing direction
if ((dir >= 0 && dir < 90) || (dir >= 330 && dir < 360)) {
    face = 0;
>>>>>>> Stashed changes
}

if (dir >= 90 && dir < 210) {
    face = 1;
}

if (dir >= 210 && dir < 330) {
    face = 2;
}

// Set sprite
if (xspd == 0 && yspd == 0) {
    // Idle sprite
    sprite_index = sprite[face];
} else {
    // Walking sprite
    sprite_index = walkingSprite[face];
}

<<<<<<< Updated upstream
//collisons
if place_meeting( x + xspd, y, oWall) || place_meeting( x + xspd, y, oEnemyParent)
{
	xspd =0;
}

if place_meeting(x, y + yspd,oWall) || place_meeting( x , y +yspd, oEnemyParent)
{ 
	yspd =0;
}
x +=xspd;
y +=yspd;
=======
// Collisions
// if (_wallCollisions == true) -- Removed unused variable
if (place_meeting(x + xspd, y, oWall)) {
    xspd = 0;
}

if (place_meeting(x, y + yspd, oWall)) {
    yspd = 0;
}
>>>>>>> Stashed changes

if (place_meeting(x + xspd, y, oEnemyParent)) {
    xspd = 0;
}

if (place_meeting(x, y + yspd, oEnemyParent)) {
    yspd = 0;
}

// Apply movement
x += xspd;
y += yspd;

// Update depth for rendering order
depth = -y;

// Inherit the parent event (getting damaged and dying)
<<<<<<< Updated upstream
event_inherited();

=======
if (_getDamage == true) {
    event_inherited();
}
>>>>>>> Stashed changes
