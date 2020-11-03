sprite_index = s_boss_dash2
image_speed = 1;

hsp = image_xscale * 15;

if !instance_exists(o_dmg_boss_dash)
{
	with(instance_create_layer(x,y,"Bullet",o_dmg_boss_dash))
	{
	owner = other.id;
	}
}


if image_index == 0 or image_index == 1 or image_index ==2
{
	with(instance_create_layer(x+(-image_xscale*6),bbox_bottom, "Gun", o_dust))
	{
		vsp = random_range(0,0.3);
		hsp = random_range(2*(other.image_xscale) , 0);
	}
	with(instance_create_layer(x,y,"Player",o_dasheffect))
	{
		owner = other.id;
	}
}

if place_meeting(x+image_xscale*30,y,o_wall)
{
	repeat(10)
	{
		with(instance_create_layer(x+random_range(0,image_xscale*30),bbox_bottom,"Bullet",o_dust))
		{
		vsp = random_range(-2,0);
		hsp = random_range(0,5*other.image_xscale);
		}
	}
}

if place_meeting(x+image_xscale*20,y,o_wall)
{
	combo ++;
	image_xscale *= -1;
	state = choose(state_boss_dash_prep,state_boss_normal,state_boss_sword_prep);
	image_index = 0;
	hsp = 0;
	
}



