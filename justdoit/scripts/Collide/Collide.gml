///Collide()


if(place_meeting(x+xspeed,y,ObjBlock))
{
	while(!place_meeting(x+sign(xspeed),y,ObjBlock))
	{
		x+=sign(xspeed)
	}
	xspeed = 0;
}
x+=xspeed;


if(place_meeting(x,y+yspeed,ObjBlock))
{
	while(!place_meeting(x,y+sign(yspeed),ObjBlock))
	{
		y+=sign(yspeed)
	}
	yspeed = 0;
}
y+=yspeed;