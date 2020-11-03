if state != state_axe_hit
{
	if other.state != state_hit
	{
		other.hp --
		if other.hp > 0
		{
			other.state = state_hit;
			other.knockback = -2;
			if instance_exists(other)
			{
				if x > other.x {other.hitfrom = 1;}
				else {other.hitfrom = -1;}
			}
		}
		other.invi = true;
		other.alarm[0] = 60;
	}
}

if instance_exists(o_player)
{
	if o_player.x < x hitdir = random_range(20,60)
	else if o_player.x >= x hitdir = random_range(120,160)
}

if state = state_axe_follow
{
	state = state_axe_hit;
}