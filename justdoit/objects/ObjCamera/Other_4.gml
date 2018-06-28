global.Camera = camera_create_view(0,0,256,256,0,-1,-1,-1,-1,-1);


view_set_camera(0, global.Camera);



/*display_set_gui_size(view_wport[0]/2,view_hport[0]/2);
camera_set_view_size(view_camera[0],view_wport[0]/2,view_hport[0]/2);


var VM = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

var PM = matrix_build_projection_ortho(view_wport[0]/2,view_hport[0]/2,1,10000);

camera_set_view_mat(global.Camera,VM);
camera_set_proj_mat(global.Camera,PM);


view_camera[0] = global.Camera;
