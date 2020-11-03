sprite_index = s_enemy_atk;
hsp = 0;
a_timer -- ;
a_timer = max(0,a_timer);
hit = hitmax;

if instance_exists(o_player)
{
	if o_player.x > x image_xscale  = 1;
	else image_xscale = -1;
}

if a_timer > 0
{
	image_index = 0;
	image_speed = 0;
}
else if a_timer == 0
{
	image_speed = 1;
}

if a_timer == 0 and (image_index == 1 or image_index == 3 or image_index == 5)
{
	audio_sound_pitch(snd_shoot,choose(0.8,0.9,1));
	audio_play_sound(snd_shoot,0,false);
	with(instance_create_layer(x+(image_xscale * 25),y-5,"Bullet",o_ebullet))
	{
		spd = 5;
		if other.image_xscale == 1 direction = 0 + random_range(-1,1);
		else direction = 180 +random_range(-1,1);
		image_xscale = other.image_xscale;
	}
}

if !range or !instance_exists(o_player) or !sight
{
	hsp = image_xscale * walksp;
	state = state_e_normal;
}

if image_index == 6
{
	state = state_e_reload;
	image_index = 0;
}

if place_meeting(x,y,o_dmg)
{
	state = state_e_hit;
}