var half_w = w / 2;
draw_set_color(c_black);
draw_roundrect_ext(x-half_w-border, y - h - (border*2),x + half_w + border,y,15,15,	false);

draw_set_text(c_white,f_menu,fa_center,fa_top);

draw_text(x,y-h-border,text_current);