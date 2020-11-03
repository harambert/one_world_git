
if other.state != state_hit and other.invi = false
{
	other.hp --
	if other.hp > 0
	{
		other.state = state_hit;
		other.knockback = -2;
		if instance_exists(other)
		{
			if direction >= 90 and direction <=270 {other.hitfrom = 1;}
			else {other.hitfrom = -1;}
		}
	}
	other.invi = true;
	other.alarm[0] = 60;
	instance_destroy();
}
