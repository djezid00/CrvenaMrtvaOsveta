// Initialize the grid
global.grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);

// Add walls to the grid
mp_grid_add_instances(global.grid, oWall, false); // Mark oWall as obstacles