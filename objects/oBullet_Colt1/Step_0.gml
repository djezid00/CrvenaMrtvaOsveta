//move
xspd = lengthdir_x(spd,dir)
yspd = lengthdir_y(spd,dir)

x += xspd;
y += yspd;

//~~~~~~~~~hit confirm cleanup ~~~~~~~~~~~

if hitConfirm == true && enemyDestroy == true {destroy =true; };

//destroy
if destroy == true  {instance_destroy(); }

//collision
if place_meeting(x,y, oSolidWall)  {destroy = true;}

 //deleting bullets out of screen
 if point_distance(xstart, ystart, x,y) > maxDist {destroy = true; }

