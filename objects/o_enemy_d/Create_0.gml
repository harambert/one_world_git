if instance_exists(o_player)
{
	hsp = 3*(o_player.image_xscale);
	image_xscale = o_player.image_xscale;
}
vsp = -4;
grv = 0.3;
done = 0;

image_speed = 0

screen_shake(3,20)

audio_play_sound(snd_enemy_die,10,false);