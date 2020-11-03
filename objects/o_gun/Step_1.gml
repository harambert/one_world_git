x = o_player.x+2;
y = o_player.y+2;


if (o_player.controller = 0)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else
{
	var controllerh = gamepad_axis_value(0,gp_axisrh);
	var controllerv = gamepad_axis_value(0,gp_axisrv);
	if (abs(controllerh) > 0.2 or (abs(controllerv) > 0.2))
	{
		controllerangle = point_direction(0,0,controllerh,controllerv);
	}
	image_angle = controllerangle;
	
}


firingdelay -= 1;
recoil = max(0,recoil - 1);

if ((mouse_check_button(mb_left)) or gamepad_button_check(0,gp_shoulderrb)) and (firingdelay < 0)
{
		recoil = 4
		firingdelay = 5;
		screen_shake(2,1);
		audio_sound_pitch(snd_shoot,choose(0.6,0.7,0.8));
		audio_play_sound(snd_shoot,0,false);
		with (instance_create_layer(x,y,"Bullet",o_bullet))
		{
			spd = 25;
			direction = other.image_angle + random_range(-3,3);
			image_angle = direction;
		}
}

x = x - lengthdir_x(recoil,image_angle)
y = y - lengthdir_y(recoil,image_angle)

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;	
}
else
{
	image_yscale = 1;
}