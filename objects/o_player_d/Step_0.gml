if done == 0
{
	image_xscale = hitfrom;
	vsp = vsp + grv;
	if hitfrom = -1 {hsp = -3};
	if hitfrom = 1 {hsp = 3};


	// Horizontal Collisions

	if (place_meeting(x+hsp,y,o_wall))
	{
		while (!place_meeting(x+sign(hsp),y,o_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;	
	}
	x = x + hsp


	// vertical collision

	if (place_meeting(x,y+vsp,o_wall))
	{
		if (vsp > 0) 
		{
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x,y+sign(vsp),o_wall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;	
	}
	y = y + vsp;
	
	if y > room_height + 30
	{
		hsp = 0;
		done = 1;
	}
}






