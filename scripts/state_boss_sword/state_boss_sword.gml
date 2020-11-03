sprite_index = s_boss_sword2
image_speed = 1;

hsp = image_xscale * 10;
vsp = vsp + grv;

if !instance_exists(o_dmg_boss_sword)
{
	with(instance_create_layer(x,y,"Bullet",o_dmg_boss_sword))
	{
	owner = other.id;
	}
}


if image_index == 0 or image_index == 1 or image_index ==2
{
	with(instance_create_layer(x,y,"Player",o_dasheffect))
	{
		owner = other.id;
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

if place_meeting(x,y+1,o_wall) and !grounded
{
	repeat(10)
	{
		with(instance_create_layer(x+random_range(0,image_xscale*30),bbox_bottom,"Bullet",o_dust))
		{
		vsp = random_range(-3,0);
		hsp = random_range(0,5*other.image_xscale);
		}
	}
	audio_play_sound(snd_boss_land,1,false);
}

