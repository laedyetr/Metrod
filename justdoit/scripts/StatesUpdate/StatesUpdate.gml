///StatesUpdate()

for(i=0; i<AllStates; i++)
{
	StateTimer[i]++;
	if(State[i]!=NxtState[i])
	{
		LstState = State[i];
		State[i] = NxtState[i];
		StateTimer[i] = 0;
	}
	
}