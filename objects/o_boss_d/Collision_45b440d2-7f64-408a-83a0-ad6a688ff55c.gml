audio_play_sound(snd_enemy_hit,1,false);


with (instance_create_layer(x,y,"Bullet",o_swordhit))
{
	image_angle = random(360);	
}

screen_shake(2,10);

if instance_exists(o_player)
{
	o_player.charge ++
}
