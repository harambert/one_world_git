combo = 0;

sprite_index = s_boss;

if hp >= hpmax*0.8 image_speed = 1;
else if hp < hpmax*0.8 and hp >= hpmax*0.6 image_speed = 1.2;
else if hp < hpmax*0.6 and hp >= hpmax*0.4 image_speed = 1.4;
else if hp < hpmax*0.4 and hp >= hpmax*0.2 image_speed = 1.6;
else if hp < hpmax*0.2 image_speed = 1.8;

if image_index >= 5
{
	if can_summon_axe = true and hp <= 15
	{
		state = state_boss_summon_axe
	}
	else
	{
		state = choose(state_boss_dash_prep,state_boss_sword_prep);
	}
hsp = 0;
image_index = 0;
	
}