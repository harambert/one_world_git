if gamepad_is_connected(0)
{
	global.controller = 1;
}
else if !gamepad_is_connected(0)
{
	global.controller = 0;
}

if room = r_main and (keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1))
{
	slide_transition(TRANS_MODE.GOTO, r_1);
	fade_main = true;
	if !audio_is_playing(snd_victory)
	{
		audio_play_sound(snd_victory,0,false);
	}
}

if fade_main = true
{
	audio_sound_gain(msc_main,0,200);
}

