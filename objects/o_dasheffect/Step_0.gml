if instance_exists(owner)
{
	sprite_index = owner.sprite_index;
	image_index = owner.image_index - 1;
	image_xscale = owner.image_xscale;
}

image_alpha -= .1;

if image_alpha <= 0
{
	instance_destroy();
}