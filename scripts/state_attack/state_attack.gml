sprite_index = s_player_atk	;
image_speed = 1;
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

if controller = 1
{
	key_left = gamepad_button_check(0,gp_padl);
	key_right = gamepad_button_check(0,gp_padr);
}

if hsp != 0 image_xscale = sign(hsp);
	
if key_left dir = -1;
if key_right dir = 1;
if !key_left and !key_right dir = image_xscale;

aspd = max(0, aspd - 1);
hsp = dir * (aspd);
vsp += grv

atk1 = false;

audio_sound_pitch(snd_atk,choose(0.8,0.9,1));
if key_atk and image_index == 0 audio_play_sound(snd_atk,5,false);

if grounded and key_atk and image_index == 0
{
	repeat(5)
	{
		with(instance_create_layer(x,bbox_bottom,"Bullet",o_dust)) //create dust effect
		{
			vsp = random_range(-1,0);
			hsp = random_range(1,5) * other.image_xscale;
		}
	}
}


if image_index = 0
{
	with(instance_create_layer(x,y,"Bullet",o_dmg))
	{
		image_xscale = other.image_xscale;
		if other.image_index = 4 instance_destroy();
	}
}



if (place_meeting(x+(image_xscale * 20),y,o_enemy))
{
		hsp = 0;
}


collision_check();

if image_index > 1 and key_atk
{
	atk2 = true;
}
	

if image_index >= 4
{
	if atk2 = false or !grounded
	{
		aspd = atk_hspd;
		state = state_normal;	
	}
	else if atk2 = true and grounded
	{
		state = state_attack2;
		aspd = 5;
		image_index = 0;
	}
}