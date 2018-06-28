///draw_sprite_outlined(sprite,index,x,y,xscale,yscale
///@param sprite
///@param index
///@param x
///@param y
///@param xscale
///@param yscale

for(var _i=0; _i<4; _i++)
{
	draw_sprite_ext(argument0,argument1,argument2+lengthdir_x(1,_i*90),argument3+lengthdir_y(1,_i*90),argument4,argument5,0,c_black,1)
}

draw_sprite_ext(argument0,argument1,argument2,argument3,argument4,argument5,0,c_white,1)
