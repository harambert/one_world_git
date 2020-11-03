with(o_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		slide_transition(TRANS_MODE.GOTO, other.target);
	}
}