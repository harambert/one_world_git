sprite_index = s_dash_u;


if key_dash and dash > 0
{
	audio_sound_pitch(snd_dash,choose(0.8,0.9,1));
	audio_play_sound(snd_dash,2,false);
	dash --;
}

dspd = max(0, dspd - 0.5);
vsp = -1*(dspd)

if (dspd = 10) or (dspd = 8) or (dspd = 6) or (dspd) = 4 or (dspd = 2)
{
	with(instance_create_layer(x,y,"Player",o_dasheffect))
	{
		owner = other.id;
	}
}

if key_dash
{
repeat(5)
	{
		with(instance_create_layer(x+(image_xscale * 5),bbox_bottom,"Bullet",o_dust)) //create dust effect
		{
			vsp = random_range(-7,2);
			hsp = 0
		}
	}
}

var move = key_right - key_left;
hsp = move * walksp;

vsp += grv;



collision_check();

if  dspd == 0 
{
	state = state_normal;
}
