var xmove = (keyboard_check(vk_right) - keyboard_check(vk_left))

Velocity = sqrt((xspeed*xspeed) + (yspeed*yspeed));


if(!global.Freeze)
switch(StateGet(BodyState))
{
	case "Stand":
	
		if(!place_meeting(x,y+1,ObjBlock))
		{
			StateSet(BodyState,"Fall");
		}
		
		if(StateTimer[BodyState] == 0)
		{
			AnimB = 0;
			AnimE = 0;
			AnimS = 0;
			Index = 0;
		}
		
		
		xspeed*=.60;
		//yspeed*=.60;
	
		if(xmove!=0)StateSet(BodyState,"Walk");
		
		if(keyboard_check_pressed(ord("Z")))
		{
			yspeed = -2;
			StateSet(BodyState,"Fall");
		}
	break;
	
	case "Walk":

		if(!place_meeting(x,y+1,ObjBlock))
		{
			StateSet(BodyState,"Fall");
		}
		
		if(StateTimer[BodyState] == 0)
		{
			AnimB = 1;
			AnimE = 5;
			//AnimS = Velocity*0.2;
			Index = 1;
		}
		AnimS = Velocity*0.2;

		if(abs(xspeed)<MaxSpeed)
		{
			xspeed += 0.05*xmove;
		}
		else
		{
			xspeed*=.90
		}
		xspeed*=.99
	
		
		
		
		if(xmove=0)StateSet(BodyState,"Stand");
		else
		Flip = xmove;
		
		
		if(keyboard_check_pressed(ord("Z")))
		{
			yspeed = -1.5;
			StateSet(BodyState,"Fall");
		}
	break;
	
	
	case "Fall":
		if(StateTimer[BodyState] == 0)
		{
			AnimB = 4;
			AnimE = 4;
			AnimS = 0;
			Index = 4;
		}
		
		if(keyboard_check_released(ord("Z")) and yspeed<0)
		{
			yspeed /= 2;
		}
		
		if(keyboard_check_pressed(ord("Z")) and StateTimer[BodyState]>10 and JetFuel!=0)
		{
			StateSet(BodyState,"Jet");
		}
		
		if(abs(xspeed)<MaxSpeed)
		{
			xspeed += 0.02*xmove;
		}
		else
		{
			xspeed*=.90
		}
		xspeed*=.99
		
		if(place_meeting(x,y+1,ObjBlock))
		{
			StateSet(BodyState,"Stand");
		}
	break;
	
	case "Jet":
		if(StateTimer[BodyState] == 0)
		{
			AnimB = 4;
			AnimE = 4;
			AnimS = 0;
			Index = 4;
		}
		JetFuel = max(JetFuel-1,0);
		
		
		if(keyboard_check_released(ord("Z")) or JetFuel == 0)
		{
			StateSet(BodyState,"Fall");
		}
		yspeed -= 0.1;
		
	
		if(abs(xspeed)<MaxSpeed+1)
		{
			xspeed += 0.01*xmove;
		}
		else
		{
			xspeed*=.90
		}
		xspeed*=.99
		
		if(place_meeting(x,y+1,ObjBlock))
		{
			StateSet(BodyState,"Stand");
			
		}
		
		
		var p = instance_create_depth(x,y-4,100,ObjParticle);
		p.MaxLife = 40;
		
	break;
}





if(!global.Freeze)
if(keyboard_check(vk_up))
{
	sprite_index = SprPlayerUp;
}
else if(keyboard_check(vk_down))
{
	sprite_index = SprPlayerDown;
}
else
{
	sprite_index = SprPlayerForward;
}

if(!global.Freeze)
if(keyboard_check(ord("X")) and ShootTime == 0)
{
	ShootTime = 20;
	var ShootX,ShootY,ind,dir;
	switch(sprite_index)
	{
		case SprPlayerForward:
		
		ShootX = 5;
		ShootY = -4;
		ind = 0
		dir = 0
		break;
		
		case SprPlayerUp:
		
		ShootX = 1;
		ShootY = -10;
		ind = 1
		dir = 90
		break;
		
		case SprPlayerDown:
		
		ShootX = 1;
		ShootY = 1;
		ind = 1
		dir = -90
		break;
	}
	
	
	var B = instance_create_depth(x+ShootX*Flip,y+ShootY,0,ObjBullet);
	B.Speed = 2;
	B.Flip = Flip;
	B.image_angle = dir;
	B.Index = ind;
}

ShootTime = max(0,ShootTime-1);


if(!global.Freeze)
{
	yspeed += global.Gravity;

	Collide();
}

if(!global.Freeze)
Index += AnimS;

if(Index > AnimE)
{
	Index = AnimB;
}

StatesUpdate();




if(x < 0 or x > room_width and !instance_exists(ObjFade))
{
	var d = instance_nearest(x,y,ObjDoor);
	
	var fade = instance_create_depth(d.TransX,d.TransY,0,ObjFade);
	fade.RoomTarget = d.TransRm;
	//fade.Door = d;
	//instance_destroy(d);
	StateSet(BodyState,"Stand");
	AnimB = 0;
	AnimE = 0;
	AnimS = 0;
	Index = 0;
}


