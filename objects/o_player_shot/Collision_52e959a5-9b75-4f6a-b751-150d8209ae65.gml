with (instance_create_layer(x,y,"Bullet",o_shot_explode))
{
	image_yscale = choose(1,1.1,-1,-1,1);
	image_xscale = other.image_xscale;
}

instance_destroy();