if(Target!=noone)
{
	Xto = Target.x;
	Yto = Target.y;
}

x = clamp( lerp(x,Xto,0.1), global.View_W/2, room_width - global.View_W/2);
y = clamp( lerp(y,Yto,0.1), global.View_H/2, room_height - global.View_H/2);


layer_x("Bk2",x/8);
layer_y("Bk2",y-32);

layer_x("Bk1",x/4);
layer_y("Bk1",y-32);


//var VM = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

camera_set_view_pos(global.Camera,x-32,y-32);


//camera_set_view_mat(view_camera[0],VM);



//if(view_get_surface_id(0)!=-1)
