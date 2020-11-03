if !instance_exists(o_dmg_enemy2)
{
	with(instance_create_layer(x,y,"Bullet",o_dmg_enemy2))
	{
		owner = other.id;
	}
	image_index = 0;
}

a_timer --;

sprite_index = s_enemy_atk2;

image_speed = 1;

if image_index == 2 or image_index == 6
{
	with(instance_create_layer(x+(-image_xscale*6),bbox_bottom, "Gun", o_dust))
	{
		vsp = random_range(0,0.2);
		hsp = random_range(-0.5*(other.image_xscale) , 0);
	}
}

if hsp != 0
{
	image_xscale = sign(hsp);
}

if a_timer >= attack_timer -1 and instance_exists(o_player)
{
	if o_player.x > x
	{
		hsp = 3
	}
	else if o_player.x < x
	{
		hsp = -3
	}
}


if a_timer <= 0
{
	state = state_e2_tired
	image_index = 0;
}

if place_meeting(x+image_xscale * 5,y,o_wall)
{
	hsp = -hsp;
}

hit = hitmax;