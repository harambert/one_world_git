sprite_index = s_player_shoot;
image_speed = 1;
vsp += grv;

if image_index == 0
{
	audio_play_sound(snd_charge, 4, false);
}

if image_index < 11
{
	hsp = 0;
}

if image_index = 12
{
	audio_play_sound(snd_shot, 4, false);
	instance_create_layer(x+image_xscale*25,y - 2,"Bullet",o_player_shot);
	screen_shake(4,20);
	repeat(10)
	{
		with (instance_create_layer(x + (-image_xscale * 20),y + random_range(-15,15),"Gun",o_dust))
		{
			hsp = other.image_xscale * random_range(3,6);
			vsp = random_range (-0.5, 0.5);
		}
	}
	charge = 0;
}

if image_index > 12
{
	s_kback = max(0, s_kback -1);
	hsp = s_kback * -sign(image_xscale);
	if (s_kback = 10) or (s_kback = 8) or (s_kback = 6) or (s_kback) = 4 or (s_kback = 2)
	{
		with(instance_create_layer(x,y,"Player",o_dasheffect))
		{
			owner = other.id;
		}
		with (instance_create_layer(x,bbox_bottom,"Gun",o_dust))
		{
			hsp = 0;
			vsp = random_range (0,-0.5);
		}
	}
}

collision_check();