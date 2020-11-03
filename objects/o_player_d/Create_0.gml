vsp = -4;
grv = 0.3;
done = 0;

if instance_exists(o_player)
{
	hitfrom = -o_player.hitfrom;
}



image_speed = 0
image_index = 0

screen_shake(5,60)

audio_play_sound(snd_enemy_die,10,false);

game_set_speed(30,gamespeed_fps);

with(o_camera) follow = other.id;

alarm[0] = 60;

if room = room2
{
	audio_stop_sound(msc_boss);
}

if room = r_1
{
	audio_stop_sound(msc_stage1);
}