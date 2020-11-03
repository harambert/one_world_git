if instance_exists(o_boss) owner = o_boss;

if instance_exists(owner)
{
	x = owner.x;
	y = owner.y;
	image_xscale = owner.image_xscale;
}