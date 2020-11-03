sprite_index = s_player_atk2;

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

if controller = 1
{
	key_left = gamepad_button_check(0,gp_padl);
	key_right = gamepad_button_check(0,gp_padr);
}

if key_left dir = -1;
if key_right dir = 1;



image_xscale = dir;

aspd = max(0, aspd - 1);
hsp = dir * (aspd);
vsp += grv;
atk2 = false;

if image_index > 1 and key_atk
{
	atk3 = true;
}

audio_sound_pitch(snd_atk,choose(0.8,0.9,1));
if image_index == 1 audio_play_sound(snd_atk,5,false);   //why wont image_index == 0 work?????

if grounded and image_index = 1
{
	repeat(3)
	{
		with(instance_create_layer(x + (image_xscale * -7),bbox_bottom,"Bullet",o_dust)) //create dust effect
		{
			vsp = random_range(-0.3,0);
			hsp = random_range(-1,-2) * other.image_xscale;
		}
	}
}


if image_index = 1
{
	with(instance_create_layer(x,y,"Bullet",o_dmg))
	{
		image_xscale = other.image_xscale;
		if other.image_index = 4 instance_destroy();
	}
}



if (place_meeting(x+(image_xscale * 15),y,o_enemy))
{
		hsp = 0;
}


collision_check();

if image_index >= 4
{
	if atk3 = false or !grounded
	{
		aspd = atk_hspd;
		state = state_normal;	
	}
	else if atk3 = true and grounded
	{
		state = state_attack3;
		aspd = 5;
		image_index = 0;
	}
}