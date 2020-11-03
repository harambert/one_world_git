hit --;
hitspd = max(0, hitspd - 1);

spin = 0;


if hit = 58 or hit =56 or hit = 54 or hit =52 or hit = 50 or hit = 48 or hit = 46 or hit = 44
{
	flash = 1;
}
else 
{
	flash = 0;
}

x += lengthdir_x(hitspd, hitdir)
y += lengthdir_y(hitspd, hitdir)

if hitspd = 0 speed = 0;


if hit <= 0
{
	state = state_axe_follow;
}
