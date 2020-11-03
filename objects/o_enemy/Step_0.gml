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
	if (!collision_line(x,y,o_player.x,o_player.y,o_wall,false,false))
	{
		sight = true;
	}
	else sight = false;
}


vsp = vsp + grv;


collision_check();
y = y + vsp;
x = x + hsp;

if state != state_e_hit and state != state_e_atk and state != state_e_reload
{
	state = state_e_normal;
}


if instance_exists(o_player) and range and state != state_e_hit and state != state_e_reload
and sight = true
{
	if (image_xscale = 1 and o_player.x > x) or (image_xscale = -1 and o_player.x < x)
	{
		state = state_e_atk
	}
}

script_execute(state);


