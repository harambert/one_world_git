if (grounded) and (afraid_of_heights) and (!place_meeting(x+hsp*2,y+1,o_wall)) // for afraid of heights
{
	hsp = -hsp;
}

hit = hitmax;
a_timer = attack_timer;


if ! grounded
{
	sprite_index = s_enemy_a;
	image_speed = 0;
	if (sign(vsp) > 0) 
	{
		
		image_index = 1;
	}
	else
	{
		image_index = 0;	
	}
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_enemy	
	}
	else
	{
		sprite_index = s_enemy_r;	
	}
}

if hsp != 0
{
	image_xscale = sign(hsp) * size;
	image_yscale = size
}

if place_meeting(x+hsp*5,y,o_wall) hsp = -hsp;