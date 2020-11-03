with(other)
{
	hp -= 1;
	flash = 3;
	hitfrom = other.direction;
	audio_play_sound(snd_enemy_hit,1,false);
}

instance_destroy();