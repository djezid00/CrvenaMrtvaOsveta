
//get camera position
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

//draw the weapon behind the player 
if aimDir >=0 && aimDir < 180 
{
	draw_my_weapon();
}

//draw the player
draw_self();

//draw the weapon
if aimDir >=180 && aimDir < 360
{
	draw_my_weapon();
}

//draw hp as num
//draw_text(x,y, string(hp));


	