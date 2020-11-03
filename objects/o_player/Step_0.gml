// get player input

jump_key = ord("K");
jump_button = gp_face1;

if global.controller = 0 and hascontrol
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_atk = keyboard_check_pressed(ord("J"));
	key_jump = keyboard_check_pressed(jump_key);
	key_dash = keyboard_check_pressed(ord("L"));
	
}

else if global.controller = 1 and hascontrol
{
	key_left = gamepad_button_check(0,gp_padl) or gamepad_axis_value(0, gp_axislh) < -0.5;
	key_right = gamepad_button_check(0,gp_padr) or gamepad_axis_value(0, gp_axislh) > 0.5;
	key_up = gamepad_button_check(0,gp_padu) or gamepad_axis_value(0, gp_axislv) < -0.5;
	key_down = gamepad_button_check(0,gp_padd) or gamepad_axis_value(0, gp_axislv) > 0.5;
	key_atk = gamepad_button_check_pressed(0,gp_face3);
	key_jump = gamepad_button_check_pressed(0,jump_button);
	key_dash = gamepad_button_check_pressed(0,gp_face2) 
	or gamepad_button_check_pressed(0,gp_shoulderr);
}


if hascontrol = false
{
	key_atk = 0;
	key_jump = 0;
	key_dash = 0;
	key_up = 0;
	key_down = 0;
	hsp = 0;
	vsp = 0;
	state = state_normal;
}

if place_meeting(x,y+1,o_wall) grounded = true;
else grounded = false;

//set player state

if state != state_attack 
and state != state_dash 
and state != state_dashup
and state != state_walljump 
and state != state_air_attack 
and state != state_attack2
and state != state_attack3
and state != state_hit
and state != state_shoot
{
	state = state_normal;	
	aspd = atk_hspd;
}

if key_atk and grounded and atk1 = true and state != state_hit and state != state_attack
and state != state_shoot
{
	state = state_attack;
	image_index = 0;
	aspd = atk_hspd;
}


if key_atk and !grounded and atk1 = true and state != state_hit
and state != state_shoot
{
	state = state_air_attack;
	image_index = 0;
	aspd = atk_hspd;
}


if key_dash and (dash > 0) and state != state_hit
and state != state_shoot
and state != state_attack3
and state != state_attack2
and state != state_attack

{
	state = state_dash;
	dspd = dash_hspd;
	
	if (place_meeting(x+image_xscale,y,o_wall)) and key_up
	{
		state = state_dashup;
	}
}

if key_jump and place_meeting(x+image_xscale,y,o_wall) and !place_meeting(x,y+10,o_wall) and state != state_hit
{
	state = state_walljump;	
}

if charge > 6 charge = 6;				//CHARGED SHOT!!

if key_down and key_atk and grounded and charge = 6
and state != state_shoot
{
	state = state_shoot;
	image_index = 0;
}

script_execute(state);
x = x + hsp;
y = y + vsp;

if hp <= 0 or y > room_height + 30 
{
	kill_player();
}

if alarm[0] == 58 or alarm[0] == 56 or
alarm[0] == 54 or alarm[0] == 52 or
alarm[0] == 50 or alarm[0] == 48 or
alarm[0] == 46 or alarm[0] == 44 or
alarm[0] == 42 or alarm[0] == 40 or
alarm[0] == 38 or alarm[0] == 36 or
alarm[0] == 34 or alarm[0] == 32 or
alarm[0] == 30 or alarm[0] == 28 or
alarm[0] == 26 or alarm[0] == 24 or
alarm[0] == 22 or alarm[0] == 20 or
alarm[0] == 18 or alarm[0] == 16 or
alarm[0] == 14 or alarm[0] == 12 or
alarm[0] == 10 or alarm[0] == 8 or
alarm[0] == 6 or alarm[0] == 4
{
	flash = 1;
}
else
{
	flash = 0;
}