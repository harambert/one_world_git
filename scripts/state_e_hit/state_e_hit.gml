sprite_index = s_enemy_hit;
hsp = 0
hit --

if hit == 18 or hit == 16 or hit == 14 or hit == 12 or hit == 10 or hit == 8
flash = 1;
else flash = 0;

if hit <= 0
{
	if !range
	{
		state = state_e_normal;
		hsp = walksp;
	}
	else
	{
		state = state_e_atk;
	}
}
