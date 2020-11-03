if room = r_main
{
	display_set_gui_size(display_get_width(),display_get_height());

	draw_set_text(c_white,f_menu,fa_left,fa_top);

	draw_text(450, 400 ,"keyboard controls:\nmove: WASD\njump: K\nattack: J\nspecial attack: s + j\ndash: L\nclimb wall: W + L");

	draw_text(display_get_gui_width() / 2, 400 ,"gamepad controls:\nmove: D-PAD or analogue\njump:A\nattack: x\nspecial attack: down + x\ndash: right button or B\nclimb wall: up + B");

	draw_set_halign(fa_center);
	draw_text(display_get_gui_width() / 2, 700, "alt + enter for full screen, but may cause fps problems\n\nuse of controller supported");
	draw_set_halign(fa_right);
	draw_text(display_get_gui_width() - 50, 1000, "by: aljon\nmusic by: brother");
	draw_set_halign(fa_left);
	draw_text(50, 1000, "prototype_v0.5");
	
	draw_set_color(c_teal);
	draw_set_halign(fa_center);
	if global.controller = 0 draw_text(display_get_gui_width() / 2, 850, "press enter to start");
	else if global.controller = 1 draw_text(display_get_gui_width() / 2, 850, "press a button to start");
}

if room != r_main
{
	display_set_gui_size(display_get_width(),display_get_height());

	draw_set_text(c_white,f_menu,fa_left,fa_top);

	draw_text(20, 20 ,"restart: r");
}