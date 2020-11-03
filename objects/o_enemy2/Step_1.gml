if (hp <= 0)
{
	with(instance_create_layer(x,y,"Player",o_enemy_d))
	{
		if (sign(hsp) != 0)
		{
			image_xscale = sign(hsp) * other.size;
			image_yscale = other.size;
		}
	}
	with(mygun)
	{
		instance_destroy();	
	}
	instance_destroy();
}