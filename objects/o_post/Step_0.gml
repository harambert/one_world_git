if (point_in_circle(o_player.x,o_player.y,x,y,100)) and (!instance_exists(o_text))
{
	with(instance_create_layer(room_width / 2, y,layerelementtype_sprite,o_text))
	{
		text = other.text
		length = string_length(text);
	}
	
	with(o_camera) follow = other.id
}

