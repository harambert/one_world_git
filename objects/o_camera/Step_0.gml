//update destination

if instance_exists(follow)
{
	x_to = follow.x;
	y_to = follow.y;
}

//update object position

x += (x_to - x) / 10;
y += (y_to - y) / 10;

x = clamp(x,view_w_half + buff,room_width-view_w_half);
y = clamp(y,view_h_half + buff,room_height-view_h_half);

//screen shake
x += random_range(-shakeremain, shakeremain);
y += random_range(-shakeremain, shakeremain);
shakeremain = max(0,shakeremain -((1/shakelength)*shakemagnitude));




//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists("Sky"))
{
	layer_x("Sky", x);
	layer_y("Sky", y-view_h_half);
}

if (layer_exists("Castle_wall"))
{
	layer_x("Castle_wall", x/2);
}

if (layer_exists("Trees"))
{
	layer_x("Trees", x/4);
}

if (layer_exists("Trees2"))
{
	layer_x("Trees2", x/2);
}
