hspeed = face * 12;


if image_index = 0 or image_index = 1 or image_index = 2 or image_index = 3
{
	with(instance_create_layer(x,y,"Player",o_dasheffect))
	{
		owner = other.id;
	}
	if place_meeting(x,y+20,o_wall)
	{
		with(instance_create_layer(x, y+15, "Gun", o_dust))
		{
			hsp = other.image_xscale * random_range(1,2)
			vsp = random_range(0,0.5)
		}
	}
}
	

if place_meeting(x,y,o_wall) instance_destroy();




