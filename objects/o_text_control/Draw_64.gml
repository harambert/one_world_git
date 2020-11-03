if instance_exists(o_player) and (point_in_circle(o_player.x,o_player.y,x,y,100))
{
	display_set_gui_size(display_get_width(),display_get_height());
	draw_set_text(c_white,f_menu,fa_center,fa_bottom);
	if global.controller = 0 draw_text(display_get_gui_width() / 2, display_get_gui_height() - 120,text[0]);
	else if global.controller = 1 draw_text(display_get_gui_width() / 2, display_get_gui_height() - 120,text[1]);
}

