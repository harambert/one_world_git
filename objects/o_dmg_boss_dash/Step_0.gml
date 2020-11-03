if instance_exists(owner)
{
	x = owner.x;
	y = owner.y;
	image_xscale = owner.image_xscale;
	if owner.state != state_boss_dash
	{
		instance_destroy();
	}
}
else
{
	instance_destroy();
}