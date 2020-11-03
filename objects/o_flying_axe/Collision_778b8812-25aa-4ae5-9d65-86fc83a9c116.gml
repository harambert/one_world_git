if instance_exists(o_player)
{
	if o_player.x < x hitdir = random_range(20,60)
	else if o_player.x >= x hitdir = random_range(120,160)
	o_player.charge ++;
}

if state = state_axe_follow
{
	state = state_axe_hit;
}

with (instance_create_layer(x,y,"Bullet",o_swordhit))
{
	image_angle = random(360);	
}

audio_play_sound(snd_enemy_hit,5,false);

instance_destroy(other);