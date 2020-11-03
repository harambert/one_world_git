if (place_meeting(x,y+1,o_wall))
{
	grounded = true;
}
else 
{
	grounded = false;
}

if instance_exists(o_player)     //range
{
	range = point_in_rectangle(o_player.x,o_player.y, x-200,y-100,x+200,y+50);
}

hit = max(0, hit -1);
if hit == 18 or hit == 16 or hit == 14 or hit == 12 or hit == 10 or hit == 8
flash = 1;
else flash = 0;

vsp = vsp + grv;


collision_check();
y = y + vsp;
x = x + hsp;

if hp >= hpmax*0.6 var c = 3;							//limiting boss combo
else if hp < hpmax*0.6 and hp >= hpmax*0.2 var c = 4
else if hp < hpmax*0.2 var c = 5;

if combo >= c state = state_boss_normal;

script_execute(state);





