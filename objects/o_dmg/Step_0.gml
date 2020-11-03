if instance_exists(o_player)
{
	if o_player.state = state_attack or state_attack2
	or state_air_attack
	{
		x = o_player.x;
		y = o_player.y;
		image_xscale = o_player.image_xscale;
		if o_player.image_index >= 3 instance_destroy();
	}
	else instance_destroy();
}