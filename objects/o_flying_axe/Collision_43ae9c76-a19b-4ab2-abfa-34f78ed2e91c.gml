if instance_exists(o_player_shot)
{
	if o_player_shot.x < x hitdir = random_range(20,60)
	else if o_player_shot.x >= x hitdir = random_range(120,160)
}

if state = state_axe_follow
{
	state = state_axe_hit;
}

with (instance_create_layer(x,y,"Bullet",o_shot_explode))
{
	image_yscale = choose(1,1.1,-1,-1,1);
	if instance_exists(o_flying_axe)
	{
		if x > o_flying_axe.x {image_xscale = -1};
		else image_xscale = 1;	
	}
}

audio_play_sound(snd_explode,1,false);

instance_destroy(other);


screen_shake(4,10);
