if state == state_boss_dash_prep
{
	state = state_boss_dash;
	image_index = 0;
	screen_shake(2,10);
	repeat(10)
		{
			with(instance_create_layer(x,bbox_bottom,"Bullet",o_dust)) //create dust effect
			{
				vsp = random_range(-3,0);
				hsp = random_range(2,5) * (-1*(other.image_xscale));
			}
		}
		audio_play_sound(snd_bossdash,1,false);
}

if state == state_boss_sword_prep
{
	instance_create_layer(x,y,"Bullet",o_dmg_boss_swordslash)
	vsp = -10;
	state = state_boss_sword;
	image_index = 0;
	screen_shake(2,10);
	repeat(10)
		{
			with(instance_create_layer(x,bbox_bottom,"Bullet",o_dust)) //create dust effect
			{
				vsp = random_range(-5,-1);
				hsp = random_range(2,5) * (other.image_xscale);
			}
		}
		audio_sound_pitch(snd_boss_sword, 1.5);
		audio_play_sound(snd_boss_sword,1,false);
}

if state = state_boss_summon_axe
{
	state = choose(state_boss_dash_prep, state_boss_sword_prep);
	image_index = 0;
}