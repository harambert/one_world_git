hitmax = 20;
hit = hitmax;
state = state_e_normal;
attack_timer = 150;
a_timer = attack_timer;

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