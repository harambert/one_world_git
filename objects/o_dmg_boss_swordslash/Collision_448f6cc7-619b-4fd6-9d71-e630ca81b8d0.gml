if other.state != state_hit
{
	other.hp --
	if other.hp > 0
	{
		other.state = state_hit;
		other.knockback = -3;   // put negative value!
		if instance_exists(other)
		{
			if xprevious > x {other.hitfrom = 1;} 
			else {other.hitfrom = -1;}
		}
	}
	other.invi = true;
	other.alarm[0] = 60;
}

