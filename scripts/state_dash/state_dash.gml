sprite_index = s_dash;

if key_dash and dash > 0
{
	audio_sound_pitch(snd_dash,choose(0.8,0.9,1));
	audio_play_sound(snd_dash,2,false);
}

dspd = max(0, dspd - 0.5);
hsp = image_xscale * (dspd);
vsp = 0

if (dspd = 10) or (dspd = 8) or (dspd = 6) or (dspd) = 4 or (dspd = 2)
{
	with(instance_create_layer(x,y,"Player",o_dasheffect))
	{
		owner = other.id;
	}
}

if key_dash
{
	if grounded and dash > 0
	{
		dash --;
		repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,"Bullet",o_dust)) //create dust effect
			{
				vsp = random_range(-1,0);
				hsp = random_range(1,5) * (-1*(other.image_xscale));
			}
		}
	}
	if !grounded and dash > 0
	{
	dash --;
	repeat(6)
		{
			with(instance_create_layer(x,bbox_bottom,"Bullet",o_dust)) //create dust effect
			{
				vsp = random_range(-2,2);
				hsp = random_range(2,5) * (-1*(other.image_xscale));
			}
		}
	}
}


if !grounded can_jump --;

collision_check();

if hsp > -2 and hsp < 2 
{
	state = state_normal;
}
