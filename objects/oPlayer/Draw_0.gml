
//get camera position
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

//draw the weapon behind the player 
draw_self();

draw_my_weapon();

//draw hp as num
//draw_text(x,y, string(hp));


//ovo je A* pathfinder
global.grid	 = mp_grid_create(0,0, room_width/10, room_height/10, 10, 10);
mp_grid_add_instances(global.grid, oSolidWall, true);