sprite_index = s_player_a;
image_index = 0;

if key_jump and place_meeting(x+image_xscale,y,o_wall)
{
hsp = 8 * (-1*(image_xscale));
vsp = -5.5;
repeat(5)
		{
			with(instance_create_layer(x+(image_xscale * 5),bbox_bottom,"Bullet",o_dust)) //create dust effect
			{
				vsp = random_range(-4,-2);
				hsp = random_range(1,5) * (-1*(other.image_xscale));
			}
		}
audio_sound_pitch(snd_jump,choose(0.6,0.7,0.8));
audio_play_sound(snd_jump, 2, false);
}

if hsp > 0
{
	hsp = max(2, hsp*0.9);
}
else if hsp < 0
{
	hsp = min(-2, hsp*0.9);
}

wjump_timer --;

vsp = vsp + grv;




collision_check();

if hsp != 0 image_xscale = sign(hsp);

if wjump_timer <= 0 or place_meeting(x+image_xscale,y,o_wall)
{
	state = state_normal;
	wjump_timer = walljump_timer;
}