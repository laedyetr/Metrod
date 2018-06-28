x+=lengthdir_x(Speed,image_angle)*Flip;
y+=lengthdir_y(Speed,image_angle);

if(instance_place(x,y,ObjDoor))
{
	var d = instance_place(x,y,ObjDoor);
	if(!d.Opening and !d.Open and !d.Closing)
	{
		d.Opening = true;

		Hit = true;
	}
	
}


if(instance_place(x,y,ObjBlock))
{
	Hit = true;	
}

if(Hit)
{
	repeat(5)
	{
		var p = instance_create_depth(x,y,0,ObjParticle)
		p.xspeed += lengthdir_x(-0.4,image_angle)*Flip;
		p.yspeed += lengthdir_y(-0.4,image_angle);
		
	}
	instance_destroy()
}