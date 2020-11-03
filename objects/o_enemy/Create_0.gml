hitmax = 20;
hit = hitmax;
state = state_e_normal;
attack_timer = 30;
a_timer = attack_timer;
sight = false

if has_weapon
{
	mygun = instance_create_layer(x,y,"Gun",o_egun);
	with(mygun)
	{
	owner = other.id;	
	}
}
else
{
	mygun = noone;	
}