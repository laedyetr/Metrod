yspeed += global.Gravity

xspeed*=.98;
yspeed*=.98;

if(instance_place(x+xspeed,y,ObjBlock))
{
	while(!instance_place(x+sign(xspeed),y,ObjBlock))
	{
		x+=sign(xspeed);
	}
	xspeed = -xspeed/1.2;
}
x+=xspeed;


if(instance_place(x,y+yspeed,ObjBlock))
{
	while(!instance_place(x,y+sign(yspeed),ObjBlock))
	{
		y+=sign(yspeed);
	}
	yspeed = -yspeed*2;
}
y+=yspeed;





Life++;
if(Life>MaxLife)
{
	instance_destroy();
}