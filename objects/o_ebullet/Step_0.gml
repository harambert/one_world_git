x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);


if (place_meeting(x+(image_xscale*spd),y,o_wall)) and (image_index != 0)
{
	while !place_meeting(x,y,o_wall)
	{
		x += sign(image_xscale)
	}
	instance_change(o_spark, true);
}

if x < 0 or x > room_width
{
	instance_destroy();
}

if y < 0 or y > room_height
{
	instance_destroy();
}

