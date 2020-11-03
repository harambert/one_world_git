sprite_index = s_player_hit;
image_xscale = hitfrom;
hit --;
hsp = knockback * hitfrom;

screen_shake(3,15);

if hit >= hitmax - 1
{
	vsp = -3;
	audio_play_sound(snd_player_hit,10,false);
	charge++;
}
vsp = min(10,vsp + grv);

if hit <= 0
{
	state = state_normal;
	hsp = 0;
}

collision_check();
