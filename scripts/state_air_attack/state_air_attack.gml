sprite_index = s_player_atk_a	;
image_speed = 1;

	
if key_left dir = -1;
if key_right dir = 1;
if !key_left and !key_right dir = image_xscale;

if hsp != 0 image_xscale = sign(hsp);

var move = key_right - key_left;
hsp = move * walksp;
vsp = min(10,vsp + grv);



atk1 = false;


if key_atk and image_index = 0
{
	audio_sound_pitch(snd_atk,choose(0.8,0.9,1));
	audio_play_sound(snd_atk,5,false);
	vsp = -2;
}



if image_index = 0
{
	with(instance_create_layer(x,y,"Bullet",o_dmg))
	{
		image_xscale = other.image_xscale;
		if other.image_index = 4 instance_destroy();
	}
}



if (place_meeting(x+hsp,y,o_enemy))
{
		hsp = 0;
}


collision_check();

if image_index > 4 or grounded
{
	aspd = atk_hspd;
	state = state_normal;	
}