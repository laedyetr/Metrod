
//if(view_get_surface_id(0)!=-1)
surface_copy_part(VSurf,0,0,application_surface,0,0,128,128);

//draw_clear(c_black);
draw_surface_stretched_ext(VSurf,0,0,512,512,c_white,1);

//draw_circle_color(x,y,2,c_blue,c_red,false)

if(instance_exists(ObjFade))
with(ObjFade)
{
	draw_set_alpha(0);
	if(Index>10)
	draw_set_alpha(floor(Index-10)/19);
	draw_set_colour(c_black);
	draw_rectangle(0,0,512,512,false)

	draw_set_alpha(1);
	draw_set_colour(c_white);
}