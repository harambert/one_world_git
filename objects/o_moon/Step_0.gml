if instance_exists(o_camera)
{
	x = o_camera.x + 85;
	y = o_camera.y - 100;
}

if layer_exists("Cloud")  // create some clouds
{
	c_tim --;
	if c_tim <= 0
	{
		c_tim = cloud_tim;
		instance_create_layer(x + 300, y+random_range(0,100),"Cloud", o_cloud);
	}
}
if instance_exists(o_cloud)
depth = o_cloud.depth + 1;
