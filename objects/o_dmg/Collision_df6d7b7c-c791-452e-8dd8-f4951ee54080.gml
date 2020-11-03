with(other)
{
	hp -= 1;
	flash = 3;
	audio_play_sound(snd_enemy_hit,1,false);
	state = state_e_hit;
	hit = hitmax;
}

with (instance_create_layer(other.x,other.y,"Bullet",o_swordhit))
{
	image_angle = random(360);	
}

screen_shake(2,10);

if instance_exists(o_player)
{
	o_player.charge ++
}


instance_destroy();