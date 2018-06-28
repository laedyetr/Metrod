if(Opening)
{
	if(!global.Freeze)
	Index+=0.2;
	if(Index >=IndexM)
	{
		Index = IndexM
		Open = true
		Opening = false;
		Blocked = false
	}
}
if(Closing)
{
	if(!global.Freeze)
	Index-=0.2;	
	
	if(place_meeting(x,y,ObjPlayer))
	{
		Opening = true;
		Open = false
		Closing = false
		OpenTimer = 300
	}
	
	if(Index<=0)
	{
		Index = 0
		Closing = false
		Blocked = true
	}
}

if(Open)
{
	
	OpenTimer++
	

	if(OpenTimer > 300)
	{
		Open = false
		Closing = true
		OpenTimer = 0;
	}
}
if(Blocked)
{
	Block.x = x-4;
	Block.y = y;
}
else
{
	Block.x = -80;
	Block.y = -80;
}

/*
if(!Opening and !Closing and !Open)
{
	if(AnimTimer = 10)
	{
		Index += 1;
		AnimTimer = 0;
	}
	if(Index>3)Index = 0;
	if(!global.Freeze)
	AnimTimer = min(AnimTimer+1,60);
}