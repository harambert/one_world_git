x = owner.x;
y = owner.y;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(o_player))
{
	if (o_player.x < x)
	{
		image_yscale = -image_yscale
	}
	if (point_distance(o_player.x,o_player.y,x,y) < 300)
	{
		image_angle = point_direction(x,y,o_player.x,o_player.y);
		countdown --;
		if countdown <= 0
		{
			if (!collision_line(x,y,o_player.x,o_player.y,o_wall,false,false))  //checks line of sight with player
			{
				countdown = countdownrate;	
				audio_sound_pitch(snd_shoot,choose(0.6,0.7,0.8));
				audio_play_sound(snd_shoot,0,false);
				with (instance_create_layer(x,y,"Bullet",o_ebullet))	
				{
					spd = 5;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
				}
			}
		}
	}
}