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
	range = point_in_rectangle(o_player.x,o_player.y, x-200,y-60,x+200,y+50);
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

if state != state_e_hit and state != state_e2_atk and state != state_e2_tired
{
	state = state_e2_normal;
}

if place_meeting(x,y,o_dmg) and state != state_e2_tired
{
	state = state_e_hit;
}

if instance_exists(o_player) and range and state != state_e_hit and state != state_e2_tired
and state != state_e2_atk and sight = true
{
	state = state_e2_atk
	image_index = 0;
}

script_execute(state);


