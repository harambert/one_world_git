#region

hit = hitmax;
aspd = atk_hspd;
wjump_timer = walljump_timer;
if grounded dash = dash_limit;
if grounded
{
	atk1 = true;
	atk2 = false;
	atk3 = false;
}
s_kback = shot_kback;

if !grounded and keyboard_check_released(jump_key) and global.controller == 0 and vsp < -3
{
	vsp = -3;
}
if !grounded and gamepad_button_check_released(0,jump_button) and global.controller == 1 and vsp < -3
{
	vsp = -3; 
}
if !grounded and keyboard_check_released(jump_key) and global.controller == 0 and vsp > -3 and vsp < -1
{
	vsp = -1;
}
if !grounded and gamepad_button_check_released(0,jump_button) and global.controller == 1 and vsp > -3 and vsp < -1
{
	vsp = -1; 
}
#endregion


// Calculate movement

var move = key_right - key_left;

hsp = move * walksp;

vsp = min(10,vsp + grv);

if (can_jump > 0) && (key_jump)       //jumping controls
{
	vsp = -7;	
	can_jump = 0;
	audio_sound_pitch(snd_jump,choose(0.6,0.7,0.8));
	audio_play_sound(snd_jump, 2, false);
	repeat(4)
	{
		with(instance_create_layer(x,bbox_bottom,"Bullet",o_dust))
		{
			vsp = random_range(-4,-1);
			hsp = random_range(1,2)*sign(other.hsp)
		}
	}
}

collision_check();

// Animation

if (place_meeting(x + (image_xscale),y,o_wall)) and vsp > 0 and !place_meeting(x,y+20,o_wall)
{
	sprite_index = s_player_cling;	      //clinging action
	vsp = min(4,vsp--);
	cling_timer --;
	if cling_timer = -1 or cling_timer = -10 or cling_timer = -20 or cling_timer = -30 or cling_timer = -40
	{
		with(instance_create_layer(x+(image_xscale*6),bbox_top, "Gun", o_dust))
		{
			vsp = 0
			hsp = random_range(-0.5*(other.image_xscale) , 0)
		}
	}
	
}
else if (!place_meeting(x,y+1,o_wall))
{
	cling_timer = 0;
	sprite_index = s_player_a;
	image_speed = 0;
	can_jump --;
	if (sign(vsp) > 0) 
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;	
	}
}
else
{
	can_jump = 5;
	if (sprite_index == s_player_a)
	{
		audio_play_sound(snd_land,0,false);   //landing events
		repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,"Bullet",o_dust))
			{
			vsp = 0;
			}
		}
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = s_player	
	}
	else
	{
		sprite_index = s_player_r;	
	}
}

if hsp != 0
{
	image_xscale = sign(hsp);
}

