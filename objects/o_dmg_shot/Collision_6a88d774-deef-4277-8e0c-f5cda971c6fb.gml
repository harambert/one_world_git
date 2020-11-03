with(other)
{
	hp -= 1;
	flash = 3;
	audio_play_sound(snd_enemy_hit,1,false);
	hit = hitmax;
}

with (instance_create_layer(other.x,other.y,"Bullet",o_swordhit))
{
	image_angle = random(360);	
}

screen_shake(4,10);

instance_destroy();