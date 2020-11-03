/*
display_set_gui_size(display_get_width(),display_get_height());

draw_set_text(c_white,f_menu,fa_left,fa_top)
draw_text(20, 20 ,"move: WASD\njump:K\nattack:J\ndash:L\nclimb wall: W + L\nyou can wall jump, too")
var hptxt = string_insert("hp:",string(hp),1);
*/

display_set_gui_size(455,256);
draw_sprite(s_player_hp, hp, 50,display_get_gui_height()-10);
draw_sprite(s_charge, charge, 120,display_get_gui_height()-10);

