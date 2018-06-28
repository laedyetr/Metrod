if(!SameRoom)
{
	if(room!=RoomTarget)
	{
		Index+=0.5
	
		if(Index >= 30)
		{
			ObjPlayer.x = x;
			ObjPlayer.y = y;
			ObjCamera.x = x-32;
			ObjCamera.y = y-32;
			room_goto(RoomTarget);
		}
	}
	else
	{
		Index -= 0.5;
		if(Index <= 0)
		{
			instance_destroy();
			global.Freeze = false
		}
	}
}