spin += 0.5;
if spin > 20 spin = 20;

image_angle += spin

if instance_exists(o_player)
{
	move_towards_point(o_player.x,o_player.y,1);
}

hit = hitmax;
flash  = 0;
hitspd = hitspdmax;