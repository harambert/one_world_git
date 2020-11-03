with(other)
{
	hp -= 6;
	flash = 3;
	audio_play_sound(snd_explode,1,false);
	hit = hitmax;
}

with (instance_create_layer(x,y,"Bullet",o_shot_explode))
{
	image_yscale = choose(1,1.1,-1,-1,1);
	image_xscale = other.image_xscale;
}

screen_shake(4,20);

instance_destroy();