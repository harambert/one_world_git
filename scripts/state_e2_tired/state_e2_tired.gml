sprite_index = s_enemy2_tired;
a_timer = attack_timer;
hsp = 0;
if image_index == 7 and state != state_e2_atk
and sight
{
	state = state_e2_atk;
	image_index = 0;
}

else if image_index == 7 and state != state_e2_atk
and !sight
{
	state = state_e2_normal;
}