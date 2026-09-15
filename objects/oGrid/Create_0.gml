var cell_width = 32;
var cell_height = 32;

var h_cells = room_width / cell_width;
var v_cells = room_height / cell_height;

global.mp_grid = mp_grid_create(0, 0, h_cells, v_cells, cell_width, cell_height);

mp_grid_add_instances(global.mp_grid, oWallH, false);








