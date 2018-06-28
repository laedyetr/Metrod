///lengthdir_xy(lenx,leny,dir,[x or y])
///@param lenx
///@param leny
///@param dir
///@param [xory]

var lx,ly,dir,f;
lx = argument0
ly = argument1
dir = argument2-90
f = argument3

if(f)
	return (lengthdir_x(lx,dir) + lengthdir_x(ly,dir+90) )
else
	return (lengthdir_y(lx,dir) + lengthdir_y(ly,dir+90) )