global.View_W = 64;
global.View_H = 64;

Target = ObjPlayer;
Xto = x;
Yto = y;





VSurf = surface_create(global.View_W*2,global.View_H*2);



/*
global.Camera = camera_create();

global.View_W = 1024/2;
global.View_H = 960/2;
camera_set_view_size(view_camera[0],global.View_W,global.View_H);
display_set_gui_size(global.View_W,global.View_H );


var VM = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

var PM = matrix_build_projection_ortho(global.View_W,global.View_H,1,10000);

camera_set_view_mat(global.Camera,VM);
camera_set_proj_mat(global.Camera,PM);

view_camera[0] = global.Camera;

Target = ObjPlayer;
Xto = x;
Yto = y;